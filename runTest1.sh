#!/bin/bash

#download test data
#for downloading data
wget https://raw.githubusercontent.com/jianlianggao/papy/master/papy/TutorialData.csv -O /usr/local/bin/TutorialData.csv

#run pa.py
#cd /usr/local/bin

pa.py TutorialData.csv 0-8 0:100:501 0.05:0.05:0.7 20


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
file_name="papy_output_zip.zip"
if [ -f "$file_name" ]; then 
  echo "$file_name found."
else
  echo "$file_name not found!"
  exit 1
fi

echo "All files created successfully"