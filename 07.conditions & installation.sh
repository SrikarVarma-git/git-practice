#!/bin/bash

USERID=$( id -u )

if [ $USERID -ne 0 ]
then 
    echo "perform this activity of installation with the root priviliges"
else
    echo "if it is in root install the package"
fi    