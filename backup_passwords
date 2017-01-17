#!/bin/sh
if ! [ -d "/Volumes/RECOVERY" ]; then
  echo "Not connected"
  exit 1
fi

mkdir -p "/Volumes/RECOVERY/passwords"

container="$(echo $HOME/Library/Containers/*.com.agilebits.onepassword-osx-helper)"
backup_dir="$container/Data/Library/Backups/"

# Find the most recent backup
backup="$(find "$backup_dir" | sort -n | tail -n 1)"

# Copy the most recent backup
cp "$backup" "/Volumes/RECOVERY/passwords"
