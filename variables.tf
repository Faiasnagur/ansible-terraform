variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1" 
}

variable "s3_bucket" {
  description = "S3 bucket to store Terraform state file"
  default     = "my-terraform-bucket11" 
}

variable "dynamodb_table" {
  description = "DynamoDB table for state locking"
  default     = "faias-dynamodb"
}

variable "ami_id" {
  description = "AMI ID for the instances"
  default     = "ami-0166fe664262f664c"  # Amazon Linux 2 AMI for eu-north-1 
}

variable "master_instance_type" {
  description = "Instance type for the Ansible master"
  default     = "t2.micro" 
}

variable "slave_instance_type" {
  description = "Instance type for Ansible slaves"
  default     = "t2.micro" 
}
variable "ssh_public_key" {
  description = "Path to the public key for SSH access"
  type        = string
}


variable "allowed_cidr_blocks" {
  description = "Allowed CIDR blocks for SSH access"
  default     = ["0.0.0.0/0"]  # Replace with specific IP range for production
}