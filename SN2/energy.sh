#!/bin/bash

echo "filename,energy,forming,breaking,angle,imaginary" > energy.csv

awk -f analyze2.awk *ts*.out | awk 'NR>2 {filename=$1; gsub(".out","",filename); printf "%s,%.4f,%.3f,%.3f,%.3f,%d\n", filename, $2, $3, $4, $5, -1*$6}' >> energy.csv
