#!/bin/bash

# Update Repos
git --git-dir=/cafe/opencafe/.git pull origin master
git --git-dir=/cafe/cloudcafe/.git pull origin master
git --git-dir=/cafe/cloudroast/.git pull origin master

# Install latest
pip install -U /cafe/opencafe
pip install -U /cafe/cloudcafe
pip install -U /cafe/cloudroast

# Install plugins
cafe-config plugins install skip_on_issue
