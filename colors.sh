#!/bin/bash

#installation packages with colors and log files and functions

USERID=$(id -u)
TIME_STAMP=$(date +%F-%H-%M-%S)
Scriptname=$(echo $0 | cut -d "." -f1)
Log_file=/tmp/$Scriptname-$TIME_STAMP.log
echo "script started excuting at: $TIME_STAMP"

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
   echo "to install root access needed"
   exit 1
fi
Validation(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R failed $N"
        exit 1
    else
        echo -e "$2..$G succes $N"

    fi
}

dnf install mysql -y &>>$Log_file
Validation $?  "installation of mysql"



dnf install git -y &>>$Log_file
Validation $?  "installation of git"