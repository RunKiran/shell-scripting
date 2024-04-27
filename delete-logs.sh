#!/bin/bash

SOURCE_DIR=/app/log
if [ -d $SOURCE_DIR ]
then
    echo "source dir exsists"
else
    echo "Please make sure $SOURCE_DIR exsists"
    exit 1
fi
files=$(find . -name "*.log" -mtime +14)
echo "files to be delete $files"

while IFS=read -r line
do

    echo "deleting files: $line"
    rm -rf $line

done<<<$files