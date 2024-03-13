#!/bin/bash
# Generate a 8 character length password.
read -p "Enter the length of the password :" length
openssl rand -hex $length
