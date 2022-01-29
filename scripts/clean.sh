#!/bin/bash
container_id=$(docker container ls -a -q -f name=webserver)
if [ ! -z $container_id ] ; then docker container rm -f $container_id;echo "webserver container has been removed";  fi
image_id=$(docker image ls|grep 'anantgehi/webserver'|tr -s ' '|cut -d' ' -f3)
if [ ! -z $image_id ] ; then docker image rm -f $image_id;  fi
