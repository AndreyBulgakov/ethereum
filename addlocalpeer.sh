#!/bin/bash
# reads current bootnode URL
NODE_NAME=$1
PEER_NAME=$2
CONTAINER_NAME="ethereum-$NODE_NAME"
PEER_CONTAINER_NAME="ethereum-$PEER_NAME"
ENODE_LINE=$($(./getenode ${PEER_CONTAINER_NAME}) 2>&1 | grep enode | head -n 1)
# replaces localhost by container IP
PEER_IP=$(docker exec ${PEER_CONTAINER_NAME} ifconfig eth0 | awk '/inet addr/{print substr($2,6)}')
ENODE_LINE=$(echo $ENODE_LINE | sed "s/127\.0\.0\.1/$PEER_IP/g" | sed "s/\[\:\:\]/$PEER_IP/g")
sh ./addpeer.sh $CONTAINER_NAME $ENODE_LINE