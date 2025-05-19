PROJECT_NAME=n8n
COMPOSE=docker compose

up:
	@echo "🔼 Subindo o n8n..."
	$(COMPOSE) up -d

down:
	@echo "🧹 Parando o n8n..."
	$(COMPOSE) down

restart: down up

logs:
	@echo "📜 Logs do n8n..."
	$(COMPOSE) logs -f

ps:
	@echo "📦 Status do container..."
	$(COMPOSE) ps

shell:
	@echo "🛠️ Acessando o shell do container n8n..."
	$(COMPOSE) exec n8n sh

rebuild:
	@echo "🔄 Rebuildando o n8n..."
	$(COMPOSE) up -d --build

clean:
	@echo "🗑️ Limpando volumes e container..."
	$(COMPOSE) down -v

help:
	@echo "Comandos disponíveis:"
	@echo "  make up        # Sobe o n8n"
	@echo "  make down      # Para o n8n"
	@echo "  make restart   # Reinicia o n8n"
	@echo "  make logs      # Mostra os logs do n8n"
	@echo "  make ps        # Mostra status do container"
	@echo "  make shell     # Acessa o shell do container"
	@echo "  make rebuild   # Rebuilda o container"
	@echo "  make clean     # Remove tudo (containers + volumes)"
