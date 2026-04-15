terraform {
  backend "s3" {
    bucket = "dev-terraform-states-project-b"
    key = "argocd/dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt = true
  }
}