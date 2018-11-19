#!/bin/bash

for value in {0..3}
do
    gpio mode $value out
done

while true
do
    ./setbits.sh "$RANDOM"
    sleep 0.25
done