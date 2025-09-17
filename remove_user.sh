#!/bin/bash
# remove_user.sh - Remove a Unix user and log action

if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USERNAME=$1

sudo userdel -r $USERNAME
if [ $? -eq 0 ]; then
  echo "$(date) : User $USERNAME removed successfully" | tee -a logs/provisioning.log
else
  echo "$(date) : Failed to remove user $USERNAME" | tee -a logs/provisioning.log
fi
