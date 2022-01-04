terraform {
  backend "s3" {
    region = "eu-central-1"
    bucket = "receive-ssl"
    key    = "global /s3/terraform.tfstate"
  }
