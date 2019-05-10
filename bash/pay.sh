#!/bin/bash

one=`db2 catalog tcpip node test remote db2 server 50000`
two=`db2 attach to test user db2inst1 using Passw0rd`
three=`db2 list database directory`

while [ $? != 0 ]
do
        echo "Still working on connecting"
        $one && $two && $three
done
~

