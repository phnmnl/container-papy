#! /bin/bash

if [ $# -eq 0]
  then
    echo "No arguments supplied"
    exit 1
fi

if [ -z "$1" ]
   then
     echo "empty argument 1"
     exit 1
fi

if [ -z "$2" ]
   then
     echo "empty argument 2"
     exit 1
fi

if [ -z "$3" ]
   then
     echo "empty argument 3"
     exit 1
fi

if [ -z "$4" ]
   then
     echo "empty argument 4"
     exit 1
fi

if [ -z "$5" ]
   then
     echo "empty argument 5"
     exit 1
fi
./pa.py $1 $2 $3 $4 $5
