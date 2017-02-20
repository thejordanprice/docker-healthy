#!/bin/bash
PATH=/usr/bin:/bin

## CONTAINER CHECKS

# nginx-balancer
if [[ $(docker ps -af name=nginx-balancer | grep Exited) != null ]];
then
    docker start nginx-balancer > /dev/null;
fi

## INDIVIDUAL SERVICES

# nginx-balancer nginx
if [[ $(docker exec -i nginx-balancer pgrep nginx | wc -l) < 1 ]];
then
    docker exec -i nginx-balancer service nginx start;
fi
