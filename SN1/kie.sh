#!/bin/bash

echo "conformer,C1,C2,C3,C4,C5,C6,HD" > kie.csv
for i in *cation*.out; do
    echo $i
    python ~/software/PyQuiver/src/quiver.py clay-sn1.config clay_new-glu_gluC6-bisCF3-sm-b3lyp_d3bj-631gd-pcm_thf.out $i | awk '/cation/ {printf substr($4,14,10) ","} $1 ~ /Isotopologue/ && NF == 3 {printf "%.4f,", $3} END {printf "\n"}' | sed s/.$// >> kie.csv
    tail -n1 kie.csv
done
