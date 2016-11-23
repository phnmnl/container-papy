#!/bin/bash

#download test data
#for downloading data
wget https://raw.githubusercontent.com/jianlianggao/papy/master/papy/TutorialData.csv -O /usr/local/bin/TutorialData.csv

#run pa.py
cd /usr/local/bin

./pa.py TutorialData.csv 8


#download results for comparison
#wget https://raw.githubusercontent.com/jianlianggao/papy/develop/results/diffgroups_0.csv -O /usr/local/bin/diffgroups_0.csv
#wget https://raw.githubusercontent.com/jianlianggao/papy/develop/results/linearregression_0.csv -O /usr/local/bin/linearregression_0.csv


#run comparison
# compare output

#diff "diffgroups.csv" "diffgroups_0.csv"

#temp="$(diff "diffgroups.csv" "diffgroups_0.csv")"

#if [ ! -z "$temp" ]; then 
#   echo "diffgroups are not equal"
#   exit 1
#else
#   echo "diffgroups are equal"
#fi

#temp="$(diff "linearregression.csv" "linearregression_0.csv")"

#if [ ! -z "$temp" ]; then 
#   echo "linearregression are not equal"
#   exit 1
#else
#   echo "linearregression are equal"
#fi
## check if the file was generated
file_name="papy_result_surface.html"
if [ -f "$file_name" ]; then 
  echo "$file found."
else
  echo "$file not found!"
  exit 1
fi

echo "All files created successfully"