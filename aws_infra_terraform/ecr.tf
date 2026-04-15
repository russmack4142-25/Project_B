locals {
  dev-repos = [for a in var.apps : "dev-${a}"]
}

resource "aws_ecr_repository" "dev_repos" {
  for_each = toset(local.dev-repos)
  name     = each.value

  tags = {
    environment = "dev"
    app         = each.value
  }
}