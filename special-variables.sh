#!/bin/bash

echo "All variables:$@"
echo "number of variables passed:$#"
echo "script name:$0"
echo "current working directory:$PWD"
echo "Home directory of current user:$HOME"
echo "which user is running this script:$USER"
echo "hostname:$HOSTNAME"
echo "process id of the current script:$$"
sleep 120 $
echo "proccess id of last background command:$!"