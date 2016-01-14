#!/bin/bash

ports="66333 55535 33232 24222"
host=$1

for x in $ports
do
    nmap -Pn --host_timeout 201 --max-retries 0 -p $x $host
    sleep 1
done
ssh root@$1


