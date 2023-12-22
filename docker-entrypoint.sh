#!/bin/sh

set -eau

echo "Creating mosquitto user"

mosquitto_passwd \
    -b \
    -c \
    /mosquitto/passwd \
    "${MOSQUITTO_USERNAME}" \
    "${MOSQUITTO_PASSWORD}" \

/docker-entrypoint.sh