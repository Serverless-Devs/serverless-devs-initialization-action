#!/bin/bash
set -e

# Configuration
case "$INPUT_PROVIDER" in
    "alibaba")
        sudo s config add -p alibaba --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --AccessKeySecret "$INPUT_ACCESS_KEY_SECRET" --AccountID "$INPUT_ACCOUNT_ID"
        ;;
    "aws")
        sudo s config add -p aws --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --SecretAccessKey "$INPUT_SECRET_ACCESS_KEY"
        ;;
    "Azure")
        sudo s config add -p azure --KeyVaultName "$INPUT_KEY_VAULT_NAME" \
            --TenantID "$INPUT_TENANT_ID" --ClientID "$INPUT_CLIENT_ID" \
            --ClientSecret "$INPUT_CLIENT_SECRET"
        ;;
    "baidu")
        sudo s config add -p baidu --AccessKeyID "$INPUT_ACCESS_KEY_ID" \
            --SecretAccessKey "$INPUT_SECRET_ACCESS_KEY"
        ;;
    "google")
        sudo s config add -p google --PrivateKeyData "$INPUT_PRIVATE_KEY_DATA" \
        ;;
    "huawei")
        sudo s config add -p huawei --AccessKey "$INPUT_ACCESS_KEY" \
            --SecretKey "$INPUT_SECRET_KEY"
        ;;
    "tencent")
        sudo s config add -p tencent --AccountID "$INPUT_ACCOUNT_ID" \
            --SecretID "$INPUT_SECRET_ID" --SecretKey "$INPUT_SECRET_KEY"
        ;;
    "*")
        echo "Unsupported provider"
        exit 1
esac
