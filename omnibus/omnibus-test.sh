#!/bin/bash

if [ -d "/opt/chef" ]; then
  echo "Chef client installation directory exists."
else
  echo "Chef client installation directory does not exist."
  exit 1
fi

echo "--- Ensure 'chef-client' command works"
/opt/chef/bin/chef-client --version
