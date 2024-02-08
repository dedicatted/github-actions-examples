provider "aws" {
  region = var.region 
}

terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket-name"
    key            = "terraform/state.tfstate" 
    region         = var.region   
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}