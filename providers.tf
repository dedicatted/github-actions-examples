terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket-name"
    key            = "terraform/state.tfstate" 
    region         = "us-west-2"
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}