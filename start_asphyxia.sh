#! /bin/bash

LISTENING_PORT="${LISTENING_PORT:=8083}"
MATCHING_PORT="${MATCHING_PORT:=5700}"
HOST="${HOST:=0.0.0.0}"
PING_IP_ADDRESS="${PING_IP_ADDRESS:=127.0.0.1}"

EXTRA_OPTS=""
if [[ -n "$DEBUG_OUTPUT" ]]; then
  EXTRA_OPTS="$EXTRA_OPTS --dev"
fi


echo "Running on port: $LISTENING_PORT, matching port: $MATCHING_PORT, host: $HOST, pingable ip address: $PING_IP_ADDRESS"

/opt/asphyxia-core -p $LISTENING_PORT -b $HOST -m $MATCHING_PORT -pa $PING_IP_ADDRESS "$EXTRA_OPTS"
