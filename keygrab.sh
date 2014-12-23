#!/bin/bash
set -e

curl -sS -O https://api.github.com/users/$1/keys
if ! [[ -x jq ]]; then
  curl -sS -O http://stedolan.github.io/jq/download/linux64/jq
  chmod 0755 jq
fi

IFS=$'\n'
for key in $(./jq -r '.[].key' keys ); do
  echo $key
done
