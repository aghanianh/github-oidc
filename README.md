# GitHub Actions + AWS OIDC Integration

This project demonstrates how to set up a GitHub Actions workflow that uses OpenID Connect (OIDC) for secure authentication with AWS. The integration allows GitHub Actions workflows to assume an AWS IAM role without the need to store AWS access keys, providing secure, short-lived credentials for AWS resource access.

---

## 🚀 Requirements

- **AWS Account**: An AWS account with appropriate IAM permissions.
- **GitHub Repository**: A personal or organization GitHub repository.
- **Terraform**: Used for managing AWS resources.
- **GitHub Actions**: For automating workflows and integrating with AWS.

---

## 🔧 Setup Overview

This project includes:

### 1. **Terraform Configuration**

- **`aws_iam_openid_connect_provider`**: Establishes the connection between GitHub Actions and AWS using OIDC.
- **`aws_iam_role`** & **`aws_iam_role_policy_attachment`**: Defines and assigns the appropriate IAM role and permissions for GitHub Actions workflows.

### 2. **GitHub Actions Workflow**

A **GitHub Actions** workflow that uses the `aws-actions/configure-aws-credentials` action to authenticate using OIDC and interact with AWS services.

---
