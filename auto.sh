#!/bin/bash

# Clean screen start

clear

# Functions

q1() {
	echo
	echo "Would you like to continue? (y/n)"
	echo
	read answer
	echo
	if [ $answer = y ]; then 
		clear
		echo "Please select the application for map deployment"
		echo
		select_app
	else
		exit 0
	fi
}

q2() {
	echo
	echo "Would you like to continue? (y/n)"
	echo
	read answer
	echo
	if [ $answer = y ]; then 
		provide_map_link
	else
		exit 0
	fi
}

q3() {
	echo
	echo "Would you like to continue? (y/n)"
	echo
	read answer
	echo
	if [ $answer = y ]; then 
		echo "thats it for today"
	else
		exit 0
	fi
}





provide_map_link() {
	clear
	echo "Please paste the full url link for where the map is located for $env in $app"
	echo
	read map_link
	echo
	echo This is the link you have pasted $map_link
	q3
}


select_env() {

	ENVS="$env1 $env2 $env3 $env4 Exit"
	select env in $ENVS; do
        	if [ "$env" = "Exit" ]; then
                	echo done
	                exit
        	elif [ "$env" = $env1 ]; then
                	clear
			echo You have selected $env1
	                q1
        	        exit
	        elif [ "$env" = $env2 ]; then
        	        clear
			echo You have selected $env2
			q1
                	exit
	        elif [ "$env" = $env3 ]; then
        	        clear
			echo You have selected $env3
			q1
                	exit
	        elif [ "$env" = $env4 ]; then
        	        clear
			echo You have selected $env4
			q1
                	exit
	        else
                	echo Wrong environment selected, try again
	        fi
	done
	clear
}


select_app() {

	app1=ep-abif
	app2=ep-ar
	app3=ep-bi
	app4=ep-df
	app5=ep-dlg
	app6=ep-ebds
	app7=ep-eia
	app8=ep-epa
	app9=ep-epc
	app10=ep-eps2
	app11=ep-epw
	app12=ep-mas
	app13=ep-mlm
	app14=ep-po
	app15=ep-scheduler

	APPS="$app1 $app2 $app3 $app4 $app5 $app6 $app7 $app8 $app9 $app10 $app11 $app12 $app13 $app14 $app15 Exit"
	select app in $APPS; do
		if [ "$app" = "Exit" ]; then
			echo done
			exit
		elif [ "$app" = $app1 ]; then
			clear
			echo You have selected $app1 in $env
			q2
		else
			echo Wrong application selected, try again
		fi
	done
	clear
}



# Global Variables

env1=Sandbox
env2=Integration
env3=UAT2
env4=Production
msg="You have selected"

abif=ep-abif
ar=ep-ar
bi=ep-bi
df=ep-df
dlg=ep-dlg
ebds=ep-ebds  
eia=ep-eia  
epa=ep-epa  
epc=ep-epc  
eps2=ep-eps2  
epw=ep-epw  
mas=ep-mas  
mlm=ep-mlm  
po=ep-po  
scheduler=ep-scheduler

echo "Please select 1,2,3 or 4 for the environment you would like to deploy the map to"
echo
select_env



