variable "iam_role_name" {
    type = string 
    description = "Name for the IAM role that will be created for github action use cases"
    default = "github-actions"
}

variable "github_org" {
  type        = string
  description = "The GitHub organization or username where the repository is located. For personal repositories, this will be your GitHub username (e.g., 'aghanianh')."
  default     = "aghanianh"
}

variable "github_repo" {
  type        = string
  description = "The name of the GitHub repository."
  default     = "github-oidc"
}

