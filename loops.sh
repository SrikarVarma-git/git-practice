#!/bin/bash


USERID=$( id -u )
R="\e[31m"
G="\e[32m"
N="\e[0m"
    
VARMA(){
    if [ $1 -ne 0 ]
    then 
        echo "perform this activity of installation with the root priviliges"
        exit 1
    else
    echo "installed successfully"
    fi    
}

VARMA $USERID

SRIKAR(){
    if [ $1 -ne 0 ]
    then 
        echo -e " $2 is  $R failure $N"
        exit 1
    else 
        echo -e " $2 is  $G success $N"
    fi
}

for package in $@
do 
    dnf list installed $package
    if [ $? -ne 0 ]
    then
         echo " $package is not installed, please install it"
         dnf install $package -y
         SRIKAR $? "installing $package"
    else 
        echo " $package is already installed"
    fi
done