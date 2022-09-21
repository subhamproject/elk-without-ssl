#!/bin/bash

sudo service ssh start

#waiting for other elk server to be up
wait_for_peer.sh "${PEER_SERVERS}"

cp /elastic${SERVER_ID}/elasticsearch.yml /tmp/elasticsearch.yml && sudo chmod 777 /tmp/elasticsearch.yml && sudo chown elasticsearch:elasticsearch /tmp/elasticsearch.yml

envsubst < /tmp/elasticsearch.yml > /etc/elasticsearch/elasticsearch.yml

case ${HOSTNAME} in
elastic1)
sudo sed -i "/^node.data/s;:.*$;: false;" /etc/elasticsearch/elasticsearch.yml
sudo sed -i "/^node.ingest/s;:.*$;: false;" /etc/elasticsearch/elasticsearch.yml
;;
esac

./usr/share/elasticsearch/bin/elasticsearch
