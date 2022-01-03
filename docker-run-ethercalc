#!/bin/sh

IP_ADDR=$(ip addr show dev br0 | awk '/inet/ { print $2}' | cut -d '/' -f1)

$(which docker) run -d \
    --name=ethercalc \
    -e REDIS_PORT_6379_TCP_ADDR=$IP_ADDR \
    -e REDIS_PORT_6379_TCP_PORT=6379 \
    -p 8000:8000 \
    audreyt/ethercalc:latest
