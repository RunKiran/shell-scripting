#!/bin/bash

NAMES=("run" "kiran" "Rajesh")

# size of above array is 3.
# index are 0,1,2

# list always starts with 0.

echo "first name is:${NAMES[0]}"
echo "second name is:${NAMES[1]}"
echo "ALL names is:${NAMES[@]}"