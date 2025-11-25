#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
W="\e[0m"
USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
   echo "ERROR:Please run this script with root access"
   exit 1
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then
       echo -e "ERROR: Installing $2 is $R failure $N"
       exit 1
    else
       echo -e "Installing $2 is $G success $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql-server -y
    VALIDATE $? "MYSQL"
else
    echo -e "MYSQL is already exists......$Y SKIPPING $N"
fi
dnf list installed nginx
if [ $? -ne 0]; then
   dnf install nginx -y
   VALIDATE $? "NGINX"
else
   echo -e "NGINX is already exists......$Y SKIPPING $N"
dnf list installed python3
if [ $? -ne 0]; then
   dnf install python3 -y
   VALIDATE $? "python3"
else
   echo -e "python3 is already exists......$Y SKIPPING $N"

