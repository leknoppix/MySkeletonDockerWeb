.PHONY: init_laravel
init_laravel : 
    docker-compose build
    docker-compose up -d
	docker-compose exec php rm -rf public
    docker-compose exec php composer create-project laravel/laravel .

.PHONY: init_symfony
init_symfony :
	docker-compose build
    docker-compose up -d
	docker-compose exec php rm -rf public
    docker-compose exec php composer create-project symfony/website-skeleton .

.PHONY: install
install :
	docker-compose exec php composer install
	docker-compose run nodejs npm install

.PHONY: update
update :
	docker-compose exec php composer update
	docker-compose run nodejs npm update