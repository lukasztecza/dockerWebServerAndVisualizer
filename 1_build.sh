#!/bin/bash
CURRENT_DIR=$(dirname $0)
docker build -t docker-nginx-webserver "$CURRENT_DIR/docker-nginx-webserver/."
