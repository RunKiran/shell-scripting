#!/bin/bash


#installation of mysql and git with functions

USERID=$(id -u)


if [$USERID -ne 0];then
   echo "to install root access needed"
   exit 1
fi

if [ $1 -ne 0 ];then
   echo "$2 failed"
else
    echo "$2 succes"
    exit 1
fi

dnf install mysqll -y
Validation $0  "installation of mysqll"



dnf install git -y
Validation $0  "installation of git"

