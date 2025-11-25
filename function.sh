#!/bin/bash
#check whether script is running with root access or not

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]; then
   echo "ERROR:PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
   exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "ERROR: Installing $2 is failure "
    exit 1
    else
    echo "Installing $2 is success"
    fi
}
dnf install mysql-server -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "NGINX"

dnf install python3 -y
VALIDATE $? "PYTHON3"