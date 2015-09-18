#!/bin/bash

docker-compose stop
docker rm --volumes --force $(docker ps --all --quiet)
docker rmi --force $(docker images --quiet)
