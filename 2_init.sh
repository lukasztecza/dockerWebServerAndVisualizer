#!/bin/bash
if [ "$1" == "" ]; then
    docker swarm init
else
    docker swarm init --advertise-addr $1
fi

docker network create -d overlay default-docker-apps-network

echo "Docker swarm ready.";
