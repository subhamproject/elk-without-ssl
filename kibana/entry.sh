#!/bin/bash

#waiting for other elk server to be up
wait_for_elastic.sh "${ELASTIC_SERVERS}"
service kibana start

tail -f /dev/null
