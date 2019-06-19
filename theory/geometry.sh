#!/bin/bash

echo "theory,forming,breaking,angle,imaginary,lithiumAlkoxide,lithiumSulfonate,carbonLithiumSulfonate,dihedral1" > geometry.csv
awk -f analyze2.awk *ts*.out >> geometry.csv
