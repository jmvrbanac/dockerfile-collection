#!/bin/bash

# Adding location to put CAFE files after execution
mkdir -p /cafe/volume/cafe_home

# Update all
sh /cafe/update.sh

echo "Running Command: cafe-runner $@"
cafe-runner $@

echo "Copying CAFE files to /cafe/volume for analysis"
cp -r /root/.opencafe/* /cafe/volume/cafe_home/
