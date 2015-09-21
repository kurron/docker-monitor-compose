#!/bin/bash

for i in `seq 1 100`;
do
    UUID=$(cat /proc/sys/kernel/random/uuid)
    curl --verbose --data-ascii @request.json --header "X-Correlation-Id: ${UUID}" --header 'Content-Type: application/json' localhost:8000
done

