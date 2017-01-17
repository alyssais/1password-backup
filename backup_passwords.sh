#!/bin/sh
if ! [ -d "/Volumes/RECOVERY" ]; then
  echo "Not connected"
  exit 1
fi

mkdir -p "/Volumes/RECOVERY/passwords"
rsync -az --delete --exclude ".DS_Store" \
  "/Users/alyssa/dropbox/Apps/1Password/1Password.agilekeychain" \
  "/Volumes/RECOVERY/passwords"
