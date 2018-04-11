#!/bin/sh
echo "VERSION 1"
NODE=$1
NODE=${NODE:-"node1"}
CONTAINER_NAME="ethereum-$NODE"
#docker exec $CONTAINER_NAME  geth --exec 'console.log(admin.nodeInfo.enode)' attach
docker exec $CONTAINER_NAME  geth --exec 'admin.nodeInfo.enode' attach 2>&1
