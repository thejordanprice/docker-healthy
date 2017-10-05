#!/bin/bash
PATH=/usr/bin:/bin

function Checks {
  ## CONTAINER CHECKS

  # nginx-balancer
  # this run docker and sees if the vm named 'nginx-balancer' is running.
  # it will return null if it is not running.
  # if it was null, start it.
  if [[ $(docker ps -af name=nginx-balancer | grep Exited) != null ]];
  then
      docker start nginx-balancer > /dev/null;
  fi

  ## INDIVIDUAL SERVICES

  # nginx-balancer nginx
  # we can execute pgrep inside the vm to see if the individual services are running.
  # if not we'll start them.
  if [[ $(docker exec -i nginx-balancer pgrep nginx | wc -l) < 1 ]];
  then
      docker exec -i nginx-balancer service nginx start;
  fi
}

Checks;
