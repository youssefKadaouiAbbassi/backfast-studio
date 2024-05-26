#!/usr/bin/env bash

# Create a directory for testing and overwrite it if it already exists
rm -rf .files
mkdir -p .files

# create project directory
mkdir -p .files/project

# create config directory
mkdir -p .files/.nestui
# create config file
echo "{
  \"version\": \"0.0.0\"
}" > .files/.nestui/config.json