#!/bin/bash

# Adding required directories (if they don't exist)
mkdir -p /cafe/volume/cafe_home
mkdir -p /cafe/volume/configs

# Update all
sh /cafe/update.sh

# Copy configs
cp -r /cafe/volume/configs/* /root/.opencafe/configs/

echo "Running Command: cafe-runner $@"
cafe-runner $@

echo "Copying CAFE files to /cafe/volume for analysis"
cp -r /root/.opencafe/* /cafe/volume/cafe_home/
