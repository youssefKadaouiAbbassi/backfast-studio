#!/usr/bin/env bash

# Create a directory for testing and overwrite it if it already exists
rm -rf .testing
mkdir -p .testing


# Create a file with
echo "This is line 1" >> .testing/test.txt