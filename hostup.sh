#!/bin/bash

for i in {1..254}
do
    # Change IP address
    ip="10.1.2.$i"
    ping -c 1 -w 1 $ip > /dev/null
    if [ $? -eq 0 ]
    then
        echo "Host $ip is up"
    fi
done
