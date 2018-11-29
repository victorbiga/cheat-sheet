#!/bin/bash

#variables

HELLO="Hello dear friend. This is a simple script with 2 local variables executed with 5 seconds pause, lets test it!"
final_message="Looks like it worked okey, right?"
cd5=5
cd4=4
cd3=3
cd2=2
cd1=1


#our local variables
function hello {
	local HELLO="This will be returned, once the program reads first function with local variable provided"
	echo $HELLO
}

function myname {
	local name="This will be retured, once the program reads second function with local variable provided"
	echo $name
}

#core program
echo $HELLO
sleep 5
hello
sleep 5
myname
sleep 5
echo $final_message
echo $cd5
sleep 1
echo $cd4
sleep 1
echo $cd3
sleep 1
echo $cd2
sleep 1
echo $cd1
sleep 1 
echo Exit
sleep 1

