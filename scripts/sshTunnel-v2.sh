#!/bin/bash

default_port=8080
default="ssh -CnfND 8080 raflman@157.230.107.139 -p 55389"


#check if there is already a ssh proxy
cmd(){
    ps ax -o args | grep ssh | grep 'CnfND' | grep -v 'grep'
}

cnt=$(cmd)

if [ "$cnt" != "" ]; then
	echo "An ssh proxy has already been established: ${cnt}"
	
else
	if [ -z "$1" ] && [ -z "$2" ]; then
        $(${default})
        
    elif [ "$1" -ne $default_port ]; then
        $("ssh -CnfND ${1} raflman@157.230.107.139 -p 55389")
        
    else
        $(${command})
    fi



fi




