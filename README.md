![GitHub Actions status](https://github.com/Serverless-Devs/serverless-devs-initialization-action/workflows/Check/badge.svg)
[![License](https://img.shields.io/github/license/Serverless-Devs/serverless-devs-initialization-action.svg)](https://github.com/Serverless-Devs/serverless-devs-initialization-action/blob/master/LICENSE)

# Serverless-Devs Initialization Action For Github Actions

Install [Serverless-Devs](https://github.com/Serverless-Devs/Serverless-Devs) tool and configure its credentials for use in other Github Actions.

**Table of Contents**

<!-- toc -->

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Credentials](#credentials)
- [License Summary](#license-summary)

<!-- tocstop -->

## Prerequisites

You should be familiar with Serverless-Devs tool. For more information, see:

* "[Serverless-Devs](https://github.com/Serverless-Devs/Serverless-Devs)"

## Usage

Currently, Serverless-Devs supports the following global configuration vendors (in alphabetical order):

| Cloud Vendor | Name | Shorthand |
| ---- | ---- | ---- |
| Alibaba Cloud Database (DRDS) | Alibaba Cloud | alibaba |
| AWS | AWS | aws |
| Azure | Azure | Azure |
| Baiduyun | Baidu Cloud | baidu |
| Google Cloud | Google Cloud | Google |
| Huawei | Huawei Cloud | Huawei |
| Tencent | Tencent Cloud | Tencent |

The input credentials of the action are different for different cloud platform. Alibaba is taken as an example in the following step:

```yaml
    - name: Initializing Serverless-Devs
      uses: git-qfzhang/Serverless-Devs-Initialization-Action@main
      with:
        provider: alibaba
        AccountID: ${{ secrets.ALIYUN_ACCOUNT_ID }}
        AccessKeyID: ${{ secrets.ALIYUN_ACCESS_KEY_ID }}
        AccessKeySecret: ${{ secrets.ALIYUN_ACCESS_KEY_SECRET }}
```

See [action.yml](action.yml) for the full documentation for this action's inputs.

The application of Serverless-Devs Initialization Actions can refer to [Serverless CI/CD](https://github.com/git-qfzhang/serverless-cicd)

## Credentials

Do not store credentials in your repository's code. You may use [GitHub Actions secrets](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets) to store credentials and redact credentials from GitHub Actions workflow logs.

## License Summary

This code is made available under the MIT license.
