#!/bin/bash
docker stack deploy -c docker-nginx-webserver/docker-compose.yml dnw;

echo "Stack deployed.";
