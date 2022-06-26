provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket  = "nome do bucket"
    key     = "nome.tfstate"
    region  = "sua-region"
    encrypt = true
  }
