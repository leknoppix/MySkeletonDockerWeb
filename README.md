# My Skeleton Docker Web

[English](https://github.com/leknoppix/MySkeletonDockerWeb/blob/main/Readme.MD),
[Français](https://github.com/leknoppix/MySkeletonDockerWeb/blob/main/README.fr.md)



## Folder for Web Projects
The folder ``` docker ``` contains the specifics of the various docker containers

The folder ``` docker/logs ``` contains error files generated by nginx.

The folder ``` app ``` contains the source code of the web project.



## Setup
Before starting, remember to adapt the ``` docker-compose.yml ``` with the version of php or mysql of your choice, as well as the ``` environment.yaml``` file in order to customize the name of the database, passwords ....


### Initialize your project

```
docker-compose exec php rm -rf public
```


### If new Laravel project
```
docker-compose build
docker-compose up -d
docker-compose exec php composer create-project laravel/laravel .
```
Test the page opening on http://127.0.0.1:8080


### If new Symfony project
```
docker-compose build
docker-compose up -d
composer create-project symfony/website-skeleton .
```
Test the page opening on http://127.0.0.1:8080


### If the project already exists
```
docker-compose up -d
```
Test the page opening on http://127.0.0.1:8080


### Si nodejs
To install the npm:
```
docker-compose run nodejs npm install
```
To execute a command :
```
docker-compose run nodejs npm run build (ou watch ou dev ...)
```