#!/usr/bin/sh
# Generate a 8 character length password.

echo -e "\nDefault shell is $SHELL \n"

read -p "Enter the length of the password :" length
openssl rand -hex $length
