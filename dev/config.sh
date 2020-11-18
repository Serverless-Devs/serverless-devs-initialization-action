#!/bin/bash
set -e

# Configuration
if [ "$INPUT_PROVIDER" == "alibaba" ]; then
  s config add -p "$INPUT_PROVIDER" --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
              --AccessKeySecret "$INPUT_ACCESS_KEY_SECRET" --AccountID "$INPUT_ACCOUNT_ID"
else
  echo "Unsupported provider"
  exit 1
fi