#!/bin/bash
set -e

access=default
if [ -n "$INPUT_ACCESS" ]; then
  access="$INPUT_ACCESS"
fi
# Configuration
if [ -n "$INPUT_ACCESS_KEY_ID" ] && [ -n "$INPUT_ACCESS_KEY_SECRET" ] && [ -n "$INPUT_ACCOUNT_ID" ]; then
  # alibaba
   s config add -a "$access" --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --AccessKeySecret "$INPUT_ACCESS_KEY_SECRET" --AccountID "$INPUT_ACCOUNT_ID"
   echo "Alibaba account added with alias $access"
fi
if [ -n "$INPUT_ACCESS_KEY_ID" ] && [ -n "$INPUT_SECRET_ACCESS_KEY" ]; then
  # Aws
   s config add -a "$access" --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --SecretAccessKey "$INPUT_SECRET_ACCESS_KEY"
    echo "AWS account added with alias $access"
fi
if [ -n "$INPUT_KEY_VAULT_NAME" ] && [ -n "$INPUT_TENANT_ID" ] && [ -n "$INPUT_CLIENT_ID" ] && [ -n "$INPUT_CLIENT_SECRET" ]; then
  # Azure
   s config add -a "$access" --KeyVaultName "$INPUT_KEY_VAULT_NAME" \
            --TenantID "$INPUT_TENANT_ID" --ClientID "$INPUT_CLIENT_ID" \
            --ClientSecret "$INPUT_CLIENT_SECRET"
    echo "Azure account added with alias $access"
fi
if [ -n "$INPUT_ACCESS_KEY_ID" ] && [ -n "$INPUT_SECRET_ACCESS_KEY" ]; then
  # baidu
   s config add -a "$access" --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --SecretAccessKey "$INPUT_SECRET_ACCESS_KEY"
    echo "Baidu account added with alias $access"
fi
if [ -n "$INPUT_PRIVATE_KEY_DATA" ]; then
  # google
   s config add -a "$access" --PrivateKeyData "$INPUT_PRIVATE_KEY_DATA"
    echo "Google account added with alias $access"
fi
if [ -n "$INPUT_ACCESS_KEY" ] && [ -n "$INPUT_SECRET_KEY" ]; then
  # huawei
   s config add -a "$access" --AccessKey "$INPUT_ACCESS_KEY" \
            --SecretKey "$INPUT_SECRET_KEY"
   echo "Huawei account added with alias $access"
fi
if [ -n "$INPUT_ACCOUNT_ID" ] && [ -n "$INPUT_SECRET_ID" ] && [ -n "$INPUT_SECRET_KEY" ]; then
  # tencent
   s config add -a "$access" --AccountID "$INPUT_ACCOUNT_ID" \
            --SecretID "$INPUT_SECRET_ID" --SecretKey "$INPUT_SECRET_KEY"
   echo "Tencent account added with alias $access"
fi
