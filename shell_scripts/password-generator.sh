#!/usr/bin/sh
# Generate a 8 character length password.
# This will be using hexadecimals characters

echo -e "\nDefault shell is $SHELL \n"

read -p "Enter the length of the password :" length
password=$(openssl rand -hex $((length / 2)))

echo -e "New Password : $password" 

