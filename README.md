# Mosquitto
Setting up a Paho Eclipse Mosquitto server inside a Docker container.

## Overview
* *docker_run.sh*
  * pull in latest version of [eclipse-mosquitto](https://hub.docker.com/_/eclipse-mosquitto)
  * create the container named mosquitto
  * publish the port 1883 and 9001 (for websocket)
  * mount the volumes *mosquitto_log* and *mosquitto_data*
  * bind mount the *mosquitto.conf* file

## Getting started
1. clone the repository
2. run the docker script

# Author

**Brent Maranzano**

# License

This project is licensed under the MIT License - see the LICENSE file for details
