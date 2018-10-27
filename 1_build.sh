#!/bin/bash
if [ -d docker-nginx-webserver ]; then
    cd docker-nginx-webserver;
    docker build -t docker-nginx-webserver .;
    cd ..;
fi

echo "Docker image ready.";
