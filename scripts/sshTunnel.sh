#!/bin/bash

user_ip_adress=$2
port=$1
command="ssh -CnfND $1 $2 -p 55389"
default="ssh -CnfND 8080 raflman@157.230.107.139 -p 55389"



cmd(){
    ps ax -o args | grep ssh | grep 'CnfND' | grep -v 'grep'
}

cnt=$(cmd)


if [[ $cnt != "" ]]; then
    echo "A tunnel has already been established with vps with the command: ${cnt}"

else
    if [[ $1 == "" ]] || [[ $2 == "" ]]; then
        $(${default})
    else
        $(${command})
    fi


fi




