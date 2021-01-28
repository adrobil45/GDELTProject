# Description du provider
provider "aws" {
    profile = "default"
    region = "us-east-1"
    access_key = var.aws_access_key_id
    secret_key = var.aws_secret_access_key
    token = var.aws_session_token
}