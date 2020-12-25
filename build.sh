#!/bin/sh

docker build . --rm -t dongtt_docker

docker-compose down

docker-compose build --no-cache --force-rm 

docker-compose up -d