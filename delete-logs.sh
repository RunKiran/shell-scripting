#!/bin/bash

SOURCE_DIR=/app/log/as

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ -d $SOURCE_DIR ]
then
    echo "source dir exsists"
else
    echo "Please make sure $SOURCE_DIR exsists"
    exit 1
fi
files=$(find $SOURCE_DIR -name "*.log" -mtime +14)
echo "files to be delete $files"

while IFS= read -r line
do

    echo "deleting files: $line"
    rm -rf $line

done<<< $files