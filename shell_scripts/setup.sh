#!/bin/bash

# Switch to Script's working directory
workdir=$(cd $(dirname $0) && pwd)
echo "Script is in $workdir"

mkdir -p data
touch data/app.log
echo "$(date)" > data/app.log
