#!/bin/bash
# bulk_provision.sh - Provision multiple users from CSV

if [ -z "$1" ]; then
  echo "Usage: $0 <users.csv>"
  exit 1
fi

CSV_FILE=$1

while IFS=, read -r USERNAME GROUP
do
  echo "Creating user: $USERNAME with group: $GROUP"
  sudo useradd -m -G $GROUP $USERNAME
  if [ $? -eq 0 ]; then
    echo "$(date) : User $USERNAME created with group $GROUP" | tee -a logs/provisioning.log
  else
    echo "$(date) : Failed to create user $USERNAME" | tee -a logs/provisioning.log
  fi
done < "$CSV_FILE"
