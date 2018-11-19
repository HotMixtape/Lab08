#!/bin/bash

# 0: GREEN | 2: BIG RED | 3: BLUE | 1: SMALL RED

for value in {0..3}
do
    gpio mode $value out
done

while true
do
    gpio write 2 0 # BIG RED OFF
    gpio write 3 1 # BLUE ON
    sleep 0.25
    gpio write 3 0 # BLUE OFF
    gpio write 2 1 # BIG RED ON
    sleep 0.25
    gpio write 2 0 # BIG RED OFF
    gpio write 1 1 # SMALL RED ON
    sleep 0.25
    gpio write 1 0 # SMALL RED OFF
    gpio write 0 1 # GREEN ON
    sleep 0.25

    # Reverse

    gpio write 0 0 # GREEN OFF
    gpio write 1 1 # SMALL RED ON
    sleep 0.25
    gpio write 1 0 # SMALL RED OFF
    gpio write 2 1 # BIG RED ON
    sleep 0.25
done
