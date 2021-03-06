.DEFAULT_GOAL := help
.PHONY: help
help: ## Affiche cette aide
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: init_laravel
init_laravel:  ## Initialise le projet sous laravel
	docker-compose build
	docker-compose up -d
	docker-compose exec php rm -rf public
	docker-compose exec php composer create-project laravel/laravel .
	make install
	make installnpm

.PHONY: init_symfony
init_symfony:  ## Initialise le projet sous symfony
	docker-compose build
	docker-compose up -d
	docker-compose exec php rm -rf public
	docker-compose exec php composer create-project symfony/website-skeleton .
	make install

.PHONY: installnpm
install:  ## Installe les dépendances du projet avec dépendances npm
	docker-compose run nodejs npm install

.PHONY: install
install:  ## Installe les dépendances du projet
	docker-compose exec php composer install

.PHONY: update
update:  ## Installe les mises à jour des dépendances du projet
	docker-compose exec php composer update

.PHONY: updatenpm
update:  ## Installe les mises à jour des dépendances npm du projet
	docker-compose run nodejs npm update

.PHONY: restart_laravel
restart_laravel: ## Relancer un projet en cours sous Laravel
	docker-compose up -d
	make update
	make updatenpm

.PHONY: restart_symfony
restart_symfony: ## Relancer un projet en cours sous Symfony
	docker-compose up -d
	make update

.PHONY: stop
stop: ## Stoppe les containers
	docker-compose down