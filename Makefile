.DEFAULT_GOAL := dev

setup:
	docker compose run --rm app make setup

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker compose up

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

build-prod:
	docker compose -f docker-compose.yml build app

push-prod:
	docker compose -f docker-compose.yml push app
