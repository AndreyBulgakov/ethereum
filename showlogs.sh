#!/bin/sh
NODE=$1
NODE=${NODE:-"node1"}
CONTAINER_NAME="ethereum-$NODE"
docker logs ${CONTAINER_NAME}