COMPOSE ?= $(shell command -v podman-compose 2> /dev/null || echo docker-compose)


build-prod:
	$(COMPOSE) -f docker-compose.prod.yaml build --no-cache

up-prod:
	$(COMPOSE) -f docker-compose.prod.yaml up

# don't forget to log in to quay.io
push-prod:
	$(COMPOSE) -f docker-compose.prod.yaml push
