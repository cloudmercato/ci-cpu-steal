#!/bin/bash

stress () {
    timeout 300 ./mprime -t
}
monit () {
    atop -P cpu 0 1 | cb-client cpu_steal
}

stress &
for i in $(seq 1 10) ; do
    sleep 30 && monit
done
