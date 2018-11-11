#!/bin/bash
CURRENT_DIR=$(dirname $0)
if [ "$1" == "visualizer" ]; then
    docker stack deploy -c "$CURRENT_DIR/docker-nginx-webserver/docker-compose-visualizer.yml" dnw
else
    docker stack deploy -c "$CURRENT_DIR/docker-nginx-webserver/docker-compose.yml" dnw
fi
