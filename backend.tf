terraform {
  backend "s3" {
    bucket = "s3-golunch-infra-amanda"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}