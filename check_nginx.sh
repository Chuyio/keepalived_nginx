#!/bin/bash
run=`ps -C nginx --no-header | wc -l`
if [ $run -eq 0 ]
then
    killall nginx
    nginx
    sleep 3
    if [ `ps -C nginx --no-header | wc -l` -eq 0 ]
    then
        killall keepalived
    fi
fi
