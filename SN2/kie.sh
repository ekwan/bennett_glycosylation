#!/bin/bash

echo "filename,C1,C2,C3,C4,C5,C6,HD" > "kie.csv"
for i in *ts*.out; do
    echo $i
    python ~/software/PyQuiver/src/quiver.py clay-sn2.config clay_new-glu_gluC6-bisCF3-sm-b3lyp_d3bj-631gd-pcm_thf.out $i | awk '$4 ~ /ts/ {split($4, fields, "-"); gsub("_1Me2O","",fields[4]); printf "%s-%s,", fields[3], fields[4]} $1 ~ /Isotopologue/ && NF == 5 && ($5+0 > 0.1) {printf "%.4f,", $5} END {printf "\n"}' | sed s/.$// >> kie.csv
    tail -n1 kie.csv
done
