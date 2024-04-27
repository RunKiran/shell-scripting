#!/bin/bash

SOURCE_DIRECTORY=/app/log
Destination_DIR=/tmp

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e "$G Source directory exists $N"
else
    echo -e "$R Please make sure $SOURCE_DIRECTORY exists $N"
    exit 1
fi
if [ -d $Destination_DIR ]
then
    echo -e "$G Destination directory exists $N"
else
    echo -e "$R Please make sure $Destination_DIR exists $N"
    exit 1
fi
FILES=$(find $SOURCE_DIRECTORY -name "*.log*" )

while IFS= read -r line
do
    echo "zipping file: $line"
    gzip $line
    mv $line $Destination_DIR
done <<< $FILES