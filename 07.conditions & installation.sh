#!/bin/bash

USERID=$( id -u )

if [ $USERID -ne 0 ]
then 
    echo "perform this activity of installation with the root priviliges"
    exit 1
else
    echo "installed successfully"
fi    


dnf install git -y