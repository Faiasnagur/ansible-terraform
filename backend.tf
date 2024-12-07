terraform {
  backend "s3" {
    bucket         = "my-terraform-bucket11"
    key            = "terraform/state/ansible-setup.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "faias-dynamodb"
  }
}