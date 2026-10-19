#!/bin/bash


for package in {0..1000}
do 
    echo $package
done



# USERID=$( id -u )
# R="\e[31m"
# G="\e[32m"
# N="\e[0m"
    
# VARMA(){
#     if [ $1 -ne 0 ]
#     then 
#         echo "perform this activity of installation with the root priviliges"
#         exit 1
#     else
#     echo "installed successfully"
#     fi    
# }

# VARMA $USERID

# SRIKAR(){
#     if [ $1 -ne 0 ]
#     then 
#         echo -e " $2 is  $R failure $N"
#         exit 1
#     else 
#         echo -e " $2 is  $G success $N"
#     fi
# }

# dnf list installed git

# if [ $? -ne 0 ]
# then 
#     echo "git is not installed.. so please check and install"
#     dnf install git -y
#     SRIKAR $? "package"
# else
#     echo "already git is installed.. nothing to install"
# fi  

# dnf list installed mysql

# if [ $? -ne 0 ]
# then 
#     echo "mysql is not installed, please install it"
#     dnf install mysql -y
#     SRIKAR $? "package"
# else 
#     echo "mysql is installed"
# fi