#!/bin/bash
R="\e[33m"
G="\e[32m"
Y="\e[31m"
W="\e[0m"
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
   echo "ERROR:Please run this script with root access"
   exit 1
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then
       echo "ERROR: Installing $2 is failure"
       exit 1
    else
       echo "Installing $2 is success"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql-server -y
    VALIDATE $? "MYSQL"
else
    echo "MYSQL is already exists......SKIPPING"
fi
