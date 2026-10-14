#!/bin/bash

USERID=$( id -u )

if [ $USERID -ne 0 ]
then 
    echo "perform this activity of installation with the root priviliges"
    exit 1
else
    echo "installed successfully"
fi    


dnf list installed git

if [ $? -ne 0 ]
then 
    echo "git is not installed.. so please check and install"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "it is not installed please check it"
        exit 1
    else 
        echo "already installation is success"   
    fi 
else
    echo "already git is installed.. nothing to install"
fi  

dnf list installed mysql

if [ $? -ne 0 ]
then 
    echo "mysql is not installed, please install it"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "mysql is not installed, please check"
        exit 1
    else 
        echo "already installation is success" 
else 
    echo "mysql is installed"
fi