#!/bin/bash
if [ -n "$ZOOKEEPER_HOSTS" ] 
then
  /opt/solr/server/scripts/cloud-scripts/zkcli.sh -zkhost $ZOOKEEPER_HOSTS -cmd makepath /solr
  /sbin/setuser solr /opt/solr/bin/solr cloud -z $ZOOKEPER_HOSTS/solr -noprompt -f
else
  /sbin/setuser solr /opt/solr/bin/solr start -f
fi 
