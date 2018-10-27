# dockerPlayground
Docker playground for development purposes

### Usage
Clone this repo
```
git clone https://github.com/lukasztecza/dockerPlayground.git
cd dockerPlaygound
```
Build docker images
```
bash 1_build.sh
```
Init swarm manager and create external network
```
bash 2_init.sh
```
It is possible that your local environment has multiple addresses on interface that swarm wants to use, if so then choose one and pass it
```
ifconfig
bash 2_init.sh 111.111.111.111 (address which you want to use from ifconfig)
```
Deploy web server and visualiser
```
bash 3_deploy.sh
```
### Using for other apps
Now you can deploy stacks with your apps for instance your app could look like this
```
/docker-compose.yml
/Dockerfile
/public/app.php (this is where nginx will point to)
```
Where docker-compose.yml
```yml
version: "3.5"

networks:
    webnet:
        name: default-docker-apps-network
        external: true

services:
    rest-app:
        image: rest-app:latest
        deploy:
            replicas: 2
            resources:
                limits:
                    cpus: "0.1"
                    memory: 50M
            restart_policy:
                condition: on-failure
        ports:
            - "9000:9000"
        networks:
            - webnet
```
And Dockerfile
```
FROM php:7.2.10-fpm-alpine3.8

ADD /public /var/www/html/public

EXPOSE 9000
```
And app.php
```
<?php
echo 'Hello world!';
```
Make sure your app has built image
```
docker image ls
```
If it is not there build image once in app directory where Dockerfile lives
```
docker build -t rest-app .
```
Lets assume that your app will be named rest-app, update your `/etc/hosts` with
```
127.0.0.1   www.rest-app.com
```
Then go to yours app root directory and deploy stack
```
docker stack deploy -c docker-compose.yml rest-app
```
Once you see in visualiser that app is up (green dot next to rest-app)
```
http://www.rest-app.com:8080
```
You should be able to see Hello world! here
```
http://www.rest-app.com
```
