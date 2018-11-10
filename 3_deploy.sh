#!/bin/bash
if [ "$1" == "visualizer" ]; then
    docker stack deploy -c docker-nginx-webserver/docker-compose-visualizer.yml dnw;
else
    docker stack deploy -c docker-nginx-webserver/docker-compose.yml dnw;
fi

echo "Stack deployed.";
