#!/bin/bash

################################################################################
# Script name: docker_run.sh
# Description: Runs the eclipse-mosquitto mqtt broker in a Docker container
# Args: None
# Author: Brent Maranzno
# email: brent_maranzano@gmail.com

# Usage:
# create two Docker volumes: mosquitto_log, mosquitto_data
# create mosquitto.conf file in the current directory
# see: https://hub.docker.com/_/eclipse-mosquitto
################################################################################
#    --publish 127.0.0.1:1883:1883/tcp --publish 127.0.0.1:9001:9001/tcp \
 
docker run --detach=true --name mosquitto \
    --publish 1883:1883/tcp --publish 9001:9001/tcp \
    --mount "type=bind,source=$(pwd)/mosquitto.conf,target=/mosquitto/config/mosquitto.conf" \
    --mount 'type=volume,source=mosquitto_log,target=/mosquitto/log' \
    --mount 'type=volume,source=mosquitto_data,target=/mosquitto/data' \
    eclipse-mosquitto
