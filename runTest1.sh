#!/bin/bash

#download test data
#for downloading data
wget https://raw.githubusercontent.com/jianlianggao/papy/master/papy/TutorialData.csv -O /usr/local/bin/TutorialData.csv

#run pa.py
cd /usr/local/bin

./pa.py TutorialData.csv 8


#download results for comparison
wget https://raw.githubusercontent.com/jianlianggao/papy/develop/results/diffgroups_0.csv -O /usr/local/bin/diffgroups_0.csv
wget https://raw.githubusercontent.com/jianlianggao/papy/develop/results/linearregression_0.csv -O /usr/local/bin/linearregression_0.csv


#run comparison
# compare output
if ! cmp -s "diffgroups_0.csv" "diffgroups.csv"; then
	echo "diffgroups files don't match!"
	exit 1
fi

if ! cmp -s "linearregression_0.csv" "linearregression.csv"; then
	echo "linearregression files don't match!"
	exit 1
fi

if diff "diffgroups_0.csv" "diffgroups.csv"; then
	echo "diffgroups files content don't match!"
	exit 1
fi

if diff "linearregression_0.csv" "linearregression.csv"; then
	echo "linearregression files content don't match!"
	exit 1
fi
echo "All files created successfully"