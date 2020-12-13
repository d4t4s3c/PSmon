#!/bin/bash

#Author: d4t4s3c
#Email:  d4t4s3c@protonmail.com
#GitHub: www.github.com/d4t4s3c

old=$(ps -eo command)

while true; do
        new=$(ps -eo command)
        diff <(echo "$old") <(echo "$new") | grep "[\>\<]" | grep -v -E "Psmon|kworker|command"
        old=$new
done
