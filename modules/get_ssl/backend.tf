terraform {
  backend "s3" {
    bucket = "receive-ssl"
    key    = "./terraform.tfstate"
    region = "us-east-1"
  }
}
