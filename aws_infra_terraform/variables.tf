variable "aws_region" {
  type        = string
  description = "AWS infra to be deployed in us-east-1 only"
  default     = "us-east-1"  
}

variable "github_user" {
  type        = string
  description = "Github username"  
}

variable "github_repo" {
  type        = string
  description = "Github repo to be used"  
}

variable "dev-branch" {
  type        = string
  description = "branch name for dev workflows"
  default     = "dev" 
}

variable "version-pattern" {
  type = string
  default = "v*.*"
  description = "versioning format for dev"
}

variable "apps" {
  type        = list(string)
  description = "List of app names to create ECR repos for 'dev'."  
  default     = [ "cat-app", "currency-app", "potter-app" ]
}

variable "argocd-github-token" {
  type = string
  sensitive = true
  description = "GitHub token to store in SSM for ArgoCD HTTPS access"
  default = ""
}

variable "environment" {
  type = string
  description = "Deployment environment"
}

variable "cluster_name" {
  default        = "project-b-eks-cluster-dev"
}