#!/bin/bash

old=$(ps -eo command)

while true; do
        new=$(ps -eo command)
        diff <(echo "$old") <(echo "$new") | grep "[\>\<]" | grep -v -E "kworker|command"
        old=$new
done
