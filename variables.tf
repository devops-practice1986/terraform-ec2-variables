variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "ssh_port" {
  description = "The SSH port for the security group"
  type        = number
  default     = 22
}
variable "allowed_cidr" {
  description = "The CIDR block allowed to access the SSH port"
  type        = string
  default     = "0.0.0.0/0"
}
variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

# for tags
variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "expens"
}
variable "security_group_name" {
  description = "The name of the security group"
  type        = string
  default     = "Allow_ALL_SSH_22"
}
variable "sg_description" {
  description = "The description of the security group"
  type        = string
  default     = "security group for SSH access"
}

variable "ec2_tag_name" {
  description = "The tag name for the EC2 instance"
  type        = string
  default     = "ec2"
}
variable "sg_tag_name" {
  description = "The tag name for the security group"
  type        = string
  default     = "Allow_SSH_SG"
}

# variable "tags" {
#   description = "A map of tags to assign to the resources"
#   type        = map(any)
#   default = {
#     Name        = "Allow_SSH_SG"
#     Project     = "expens"
#     Environment = "dev"
#     Component   = "backend"
#     Terraform   = "true"
#   }
# }



