provider "aws" {
  region = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
  assume_role {
    role_arn     = "arn:aws:iam::769899179661:role/SonarQubeAdminRole"
  }
}
