#!/bin/bash

for value in {0..3}
do
    gpio mode $value out
done

for value in {1..5}
do
    for varon in {0..3}
    do
        gpio write $varon 1
    done
    sleep 1
    for varoff in {0..3}
    do
        gpio write $varoff 0
    done
    sleep 1
done
