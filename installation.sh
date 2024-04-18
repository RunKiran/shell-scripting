#!/bin/bash

#installation of mysql and git

USERID=(id -u)

if [$USERID -ne 0];then
   echo "to install root access needed"
   exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ];then
   echo "installation of mysql failed"
    else
    echo "installation of mysql succes"
    exit 1
fi


dnf install git -y

if [ $? -ne 0 ] ;then
   echo "installation of git failed"
    else
    echo "installation of git succes"
    else
    echo "git already installed"

    exit 1
fi