#!/bin/bash
# create_user.sh - Create a Unix user and log action

if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USERNAME=$1

# Create user
sudo useradd -m $USERNAME
if [ $? -eq 0 ]; then
  echo "$(date) : User $USERNAME created successfully" | tee -a logs/provisioning.log
else
  echo "$(date) : Failed to create user $USERNAME" | tee -a logs/provisioning.log
fi
