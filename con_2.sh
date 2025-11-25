#!/bin/bash
 n=$1
if [ $n -lt 10 ]; then
  echo "Given number $n is less than 10 "
elif [ $n -gt 10 ]; then
   echo "Given number $n is greater than 10"
else
   echo "Given number $n is equal to 10"
fi
