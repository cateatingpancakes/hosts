#!/bin/bash

match()
{
    IP=$(dig +short $2)
    if [ $1 == $IP ]; then
        echo -e "$2\t$IP\tOK"
    else
        echo -e "$2\t$IP\tBAD"
    fi;
}

cat hosts | while read hostname; do
    match $hostname
done