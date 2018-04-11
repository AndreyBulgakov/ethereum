#!/bin/sh
NODE=$1
PEER=$2
NODE=${NODE:-"node1"}
CONTAINER_NAME="ethereum-$NODE"
COMMAND='admin.addPeer("'$PEER'")'
docker exec $CONTAINER_NAME geth --exec ${COMMAND} attach 2>&1

