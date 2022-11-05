.PHONY: up
up:
	docker compose up -d

.PHONY: down
down:
	docker compose down

.PHONY: clean
clean:
	docker image rm nestjs-api_api
