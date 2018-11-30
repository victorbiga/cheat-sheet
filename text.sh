#!/bin/bash

#variables
COUNTER=15
time="sleep 2"
HELLO="Hello dear friend. This is a simple script with 2 local variables executed with 2 seconds pause, lets test it!"
final_message="Looks like it worked okey, right?"

#our local variables
function hello {
	local HELLO="This will be returned, once the program reads first function with local variable provided"
	echo $HELLO
}

function myname {
	local name="This will be retured, once the program reads second function with local variable provided"
	echo $name
}

#core program, this will be updated to loops on next push
echo $HELLO
$time
hello
$time
myname
$time
echo $final_message I will start $COUNTER seconds counter until this programm exits
$time

until [ $COUNTER -lt 1 ]; do
	echo Exiting in $COUNTER seconds
	sleep 1 
	let COUNTER-=1
done
