#! /bin/bash

LISTENING_PORT="${LISTENING_PORT:=8083}"
MATCHING_PORT="${MATCHING_PORT:=5700}"
HOST="${HOST:=0.0.0.0}"
PING_IP_ADDRESS="${PING_IP_ADDRESS:=127.0.0.1}"

echo "Running on port: $LISTENING_PORT, client matching port: $MATCHING_PORT, host: $HOST, pingable ip address: $PING_IP_ADDRESS, additional options: $ASPHYXIA_OPTS"

exec /opt/asphyxia/asphyxia-core -p $LISTENING_PORT -b $HOST -m $MATCHING_PORT -pa $PING_IP_ADDRESS "$ASPHYXIA_OPTS"
