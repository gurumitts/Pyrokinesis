#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

git pull

rm -f db/app.sqlite3.db

python run.py $1
