#!/bin/bash

wait_for_kibana.sh "${KIBANA_SERVER}"

service nginx start

tail -f /dev/null
