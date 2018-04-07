#!/bin/sh
NODE=$1
PEER=$2
NODE=${NODE:-"node1"}
CONTAINER_NAME="ethereum-$NODE"
docker port "$CONTAINER_NAME"
