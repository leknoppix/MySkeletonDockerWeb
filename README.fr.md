# My Skeleton Docker Web

[English](https://github.com/leknoppix/MySkeletonDockerWeb/blob/main/Readme.MD),
[Français](https://github.com/leknoppix/MySkeletonDockerWeb/blob/main/README.fr.md)


## Dossier pour les projets web
Le dossier ```docker``` contient les spécificités des divers container docker.

Le dossier ```docker/logs``` contient les fichiers erreurs générés par nginx.

Le dossier ```app``` contient le projet


## Installation
Avant de commencer, pensez à adapter le ```docker-compose.yml``` avec la version de php ou de mysql de votre choix, ainsi que le fichier ```environment.yaml``` afin de personnaliser le nom de la base de donnée, les mots de passe ....


### Initialiser votre projet

```
docker-compose exec php rm -rf public
```


### Si nouveau projet Laravel

```
docker-compose build
docker-compose up -d
docker-compose exec php composer create-project laravel/laravel .
```
Tester l'ouverture de la page sur http://127.0.0.1:8080


### Si nouveau projet Symfony

```
docker-compose build
docker-compose up -d
composer create-project symfony/website-skeleton .
```
Tester l'ouverture de la page sur http://127.0.0.1:8080

### Si projet déjà existant
```
docker-compose up -d
```
Tester l'ouverture de la page sur http://127.0.0.1:8080


### Si nodejs
Pour installer les dépendances npm:
```
docker-compose run nodejs npm install
```
Pour exécuter une commande :
```
docker-compose run nodejs npm run build (ou watch ou dev ...)
```