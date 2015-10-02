#!/bin/bash

#docker run --detach --name api-gateway-service-gelf --publish=9000:8000 --net host --log-driver=gelf --log-opt gelf-address=udp://localhost:5678 --log-opt gelf-tag="api-gateway" kurron/docker-monitor-api-gateway:latest
docker run --detach --name api-gateway-service-gelf --publish=9000:8000 --net host --log-driver=syslog --log-opt syslog-address=udp://localhost:1234 kurron/docker-monitor-api-gateway:latest
