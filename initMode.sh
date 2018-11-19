#!/bin/bash

for value in {0..3}
do
    gpio mode $value out
    gpio write $value 1
done
