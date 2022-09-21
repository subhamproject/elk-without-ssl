# elk-without-ssl
This repo has all the config file and script to create local ELK on Docker



how to use?

clone the repo - do

cd elk-without-ssl
vagrant up  --> this will start a VM where all elk cluster will rn
vagrant ssh --> this will to login to vagrant box

By default all the config files will be mounted inside VM under /vagrant path

ls -l /vagrant all the files can be seen

```
-rw-rw-r-- 1 vagrant vagrant  480 Sep 21 08:18 beat.yml
-rw-rw-r-- 1 vagrant vagrant 2782 Sep 21 08:18 cluster_elk.yaml
-rw-rw-r-- 1 vagrant vagrant  584 Sep 21 08:18 default
drwxrwxr-x 2 vagrant vagrant 4096 Sep 21 08:18 elastic
-rw-rw-r-- 1 vagrant vagrant  455 Sep 21 08:18 elasticsearch.yml
drwxrwxr-x 2 vagrant vagrant 4096 Sep 21 08:18 filebeat
drwxrwxr-x 2 vagrant vagrant 4096 Sep 21 08:18 kibana
-rw-rw-r-- 1 vagrant vagrant  157 Sep 21 08:18 kibana.yml
drwxrwxr-x 2 vagrant vagrant 4096 Sep 21 08:18 nginx
-rw-rw-r-- 1 vagrant vagrant   93 Sep 21 08:18 README.md
-rwxrwxr-x 1 vagrant vagrant  410 Sep 21 08:18 start_elk_cluster.sh
-rwxrwxr-x 1 vagrant vagrant  409 Sep 21 08:18 stop_elk_cluster.sh
-rwxrwxrwx 1 vagrant vagrant 1529 Sep 19 11:34 Vagrantfile
```


use this script to start ELK cluster 

bash start_elk_cluster.sh

you can access kibana on 

http://localhost - without kibana password
http://localhost:8080 -> with kibana password

Kibana ID -> kibadmin
Password -> password
