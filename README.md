This project demonstrates how to set up a GitHub Actions workflow that uses OpenID Connect (OIDC) for secure authentication with AWS. The integration allows GitHub Actions workflows to assume an AWS IAM role without the need to store AWS access keys, providing secure, short-lived credentials for AWS resource access.

Requirements
AWS account with appropriate IAM permissions

GitHub repository (personal or organization)

Terraform to manage AWS resources

GitHub Actions for automation

Setup Overview
This project includes:

Terraform Configuration:

aws_iam_openid_connect_provider resource to establish the connection between GitHub Actions and AWS using OIDC.

aws_iam_role and aws_iam_role_policy_attachment to define and assign the appropriate IAM role and permissions for GitHub Actions workflows.

GitHub Actions Workflow:

A GitHub Actions workflow that uses the aws-actions/configure-aws-credentials action to authenticate using OIDC and interact with AWS services.
