#!/bin/bash
USER_ID =$(id -u)
if [ USER_ID -ne 0]; then
   echo "ERROR:Please run this script with root previleges"
   exit 1
fi

dnf install mysql-server -y

if[ $? -eq 0 ] ; then
   echo "installing mysql server is success"
else
   echo "installing mysql server is failure"
   exit 1
fi