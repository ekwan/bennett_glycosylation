#!/bin/bash

#clay_new-glu_gluC6-BCDR-Na2_1Me2O-bisCF3-ts-b1b95-631gd-pcm_thf.out           clay_new-glu_gluC6-bisCF3-sm-b3p86-631gd-pcm_thf.out

echo "theory,C1,C2,C3,C4,C5,C6,HD" > kie.csv
for i in *ts*.out; do
    ts=$i
    sm=`echo $i | awk '{gsub("ts","sm",$0); gsub("-BCDR-Na2_1Me2O","",$0); print $0}'`

    if [ -f $sm ]; then
        echo python ~/software/PyQuiver/src/quiver.py clay-sn2.config $sm $ts
        python ~/software/PyQuiver/src/quiver.py clay-sn2.config $sm $ts | awk '/^Isotopologue/ && match($3,"[0-9]") > 0 {printf "%s,", $5} /^Reading/ && /ts/ {split($4,fields,"-"); printf "%s,", fields[7]}' | sed 's/.$//' >> kie.csv
        tail -n1 kie.csv
    else
        echo $sm not found
    fi
done
