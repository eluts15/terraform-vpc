variable "aws_key_path" {}
variable "aws_key_name" {}

# the aws region where resources are launched.
variable "aws_region" {
  description = "EC2 Region for the VPC"
  default = "us-west-1"
}

variable "amis" {
  description = "AMIs by region"
  default = "us-west-1"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR for the public subnet"
  default = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the private subnet"
  default = "10.0.1.0/24"
}

