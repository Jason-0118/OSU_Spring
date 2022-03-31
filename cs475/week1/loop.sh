#!/bin/bash
g++ prog.cpp -o prog -lm -fopenmp
# number of threads:
for t in 1 4
do
    echo NUMT = $t
    # number of subdivisions:
    for s in  100 1000 10000
    do
        echo NUMTRIES = $s
        ./prog $t $s
    done
done