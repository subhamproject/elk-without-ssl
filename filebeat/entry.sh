#!/bin/bash

#waiting for other elk server to be up
wait_for_elastic.sh "${ELASTIC_SERVERS}"

chown root:root /etc/filebeat/filebeat.yml

chmod go-w /etc/filebeat/filebeat.yml


filebeat setup --index-management -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["http://elastic1:9200", "http://elastic2:9200", "http://elastic3:9200"]'

service filebeat start

tail -f /dev/null
