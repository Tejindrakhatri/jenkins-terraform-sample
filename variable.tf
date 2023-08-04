variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Machine Image ID"
  default     = "ami-0c94855ba95c574c8"  # use your AMI's
}

variable "key_name" {
  description = "Name of the SSH key pair"
}

variable "public_key_path" {
  description = "Path to the public key"
}

variable "private_key_path" {
  description = "Path to the private key"
}
