#!/bin/bash

for value in {0..3}
do
    gpio mode $value out
done

for value in {0..15}
do
    ./setbits.sh "$value"
    echo $value
    sleep 1
done