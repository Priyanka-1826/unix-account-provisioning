#!/bin/bash
# validate_access.sh - Check if a Unix user exists

if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USERNAME=$1

id $USERNAME &>/dev/null

if [ $? -eq 0 ]; then
  echo "User $USERNAME exists on system."
else
  echo "User $USERNAME does not exist."
fi
