#!/bin/bash
if [ -d docker-nginx-webserver ]; then
    cd docker-nginx-webserver;
    docker build -t docker-nginx-webserver .;
    cd ..;
fi

#if [ ! -d docker_playground_mysql_app ]; then
#    cd docker_playground_mysql_app;
#    docker build -t docker_playground_mysql_app .;
#    cd ..;
#fi

echo "Docker image ready.";
