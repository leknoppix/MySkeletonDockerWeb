# MySkeletonDockerWeb

## Dossiers pour projet Laravel
Le dossier ```docker``` contient les spécificités des divers container docker.

Le dossier ```docker/logs``` contient les fichiers erreurs générés par nginx.

Le dossier ```app``` contient le projet


### Installation
```
docker-compose build
docker-compose up -d
```
Tester l'ouverture de la page sur http://127.0.0.1:8080 (Page It Works)


### Initialiser project quelque soit le projet

```
docker-compose exec php rm -rf public
```


### Si projet Laravel: Creation
```
docker-compose build
docker-compose up -d
docker-compose exec php composer create-project laravel/laravel .
```
Tester l'ouverture de la page sur http://127.0.0.1:8080 (Page laravel)


### Si projet Symfony: Creation
```
docker-compose build
docker-compose up -d
composer create-project symfony/website-skeleton .
```
Tester l'ouverture de la page sur http://127.0.0.1:8080 (Page symfony)


### Si nodejs
```
docker-compose run nodejs npm install
```
Pour compiler
```
docker-compose run nodejs npm run build (ou watch ou dev ...)
```
