#!/bin/bash

echo "--- Ensure 'chef' command works"
chef -v

if [ -d "/opt/chef" ]; then
  echo "Chef client installation directory exists."
else
  echo "Chef client installation directory does not exist."
  exit 1
fi