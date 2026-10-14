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
else
    echo "already git is installed.. nothing to install"
fi  