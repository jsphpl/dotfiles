#!/bin/bash

before_file=$(mktemp)
after_file=$(mktemp)

defaults read > $before_file
while true; do
    sleep 10
    defaults read > $after_file
    diff --context=10 $before_file $after_file
    rm $before_file
    mv $after_file $before_file
done
