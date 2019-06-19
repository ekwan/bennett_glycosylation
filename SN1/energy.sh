#!/bin/bash

echo "conformer,energy" > energy.csv
awk -f analyze.awk *cation*.out | awk 'NR>2 {printf "%s,%.4f\n",substr($1,14,10),$2}' >> energy.csv
