resource "aws_iam_openid_connect_provider" "github_oidc" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com",
  ]

  thumbprint_list = ["6938fd4d98bab03faadb97b34396831e3780aea1","1c58a3a8518e8759bf075b76b750d4f2df264fcd" ]
}

resource "aws_iam_role" "github_action" {
  name = var.iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRoleWithWebIdentity"
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.github_oidc.arn
        }
        Condition = {
            StringLike =  {
                "token.actions.githubusercontent.com:sub": "repo:${var.github_org}/${var.github_repo}:*"
            }
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_github_policy" {
    role = aws_iam_role.github_action.name 
    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}