variable "aws_region" {
  description = "AWS region to deploy my project into"
  type        = string
  default     = "eu-west-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "172.20.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "172.20.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type for both control and managed nodes"
  type        = string
  default     = "c7i-flex.large"
}

variable "key_name" {
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "My IP address in CIDR form, only allowed to SSH into the control node"
  type        = string
}