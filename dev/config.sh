#!/bin/bash
set -e

access=default
if [ -n "$INPUT_ACCESS" ]; then
  access="$INPUT_ACCESS"
fi
# Configuration
if [ -n "$INPUT_ACCESS_KEY_ID" ] && [ -n "$INPUT_ACCESS_KEY_SECRET" ] && [ -n "$INPUT_ACCOUNT_ID" ]; then
  # alibaba
  sudo s config add -a "$access" --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --AccessKeySecret "$INPUT_ACCESS_KEY_SECRET" --AccountID "$INPUT_ACCOUNT_ID"
fi
if [ -n "$INPUT_ACCESS_KEY_ID" ] && [ -n "$INPUT_SECRET_ACCESS_KEY" ]; then
  # Aws
  sudo s config add -a "$access" --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --SecretAccessKey "$INPUT_SECRET_ACCESS_KEY"
fi
if [ -n "$INPUT_KEY_VAULT_NAME" ] && [ -n "$INPUT_TENANT_ID" ] && [ -n "$INPUT_CLIENT_ID" ] && [ -n "$INPUT_CLIENT_SECRET" ]; then
  # Azure
  sudo s config add -a "$access" --KeyVaultName "$INPUT_KEY_VAULT_NAME" \
            --TenantID "$INPUT_TENANT_ID" --ClientID "$INPUT_CLIENT_ID" \
            --ClientSecret "$INPUT_CLIENT_SECRET"
fi
if [ -n "$INPUT_ACCESS_KEY_ID" ] && [ -n "$INPUT_SECRET_ACCESS_KEY" ]; then
  # baidu
  sudo s config add -a "$access" --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --SecretAccessKey "$INPUT_SECRET_ACCESS_KEY"
fi
if [ -n "$INPUT_PRIVATE_KEY_DATA" ]; then
  # google
  sudo s config add -a "$access" --PrivateKeyData "$INPUT_PRIVATE_KEY_DATA"
fi
if [ -n "$INPUT_ACCESS_KEY" ] && [ -n "$INPUT_SECRET_KEY" ]; then
  # huawei
  sudo s config add -a "$access" --AccessKey "$INPUT_ACCESS_KEY" \
            --SecretKey "$INPUT_SECRET_KEY"
fi
if [ -n "$INPUT_ACCOUNT_ID" ] && [ -n "$INPUT_SECRET_ID" ] && [ -n "$INPUT_SECRET_KEY" ]; then
  # tencent
  sudo s config add -a "$access" --AccountID "$INPUT_ACCOUNT_ID" \
            --SecretID "$INPUT_SECRET_ID" --SecretKey "$INPUT_SECRET_KEY"
fi
