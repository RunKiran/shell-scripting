#!/bin/bash


#installation of mysql and git with functions

USERID=$(id -u)


if [ $USERID -ne 0 ]
then
   echo "to install root access needed"
   exit 1
fi
Validation(){
    if [ $1 -ne 0 ]
    then
        echo "$2 failed"
        exit 1
    else
        echo "$2 succes"

    fi
}

dnf install mysql -y
Validation $?  "installation of mysql"



dnf install git -y
Validation $?  "installation of git"

