#!/bin/bash

# promote every swarm-node to a master
for i in `seq 2 4`; do 
  NODE=$(docker node ls | sed -n ${i}p | cut -d' ' -f1)
  docker node promote $NODE
done

