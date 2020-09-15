variable "ec2_name" {
  type        = string
  description = "EC2 Name"
}

locals {
  instance_type = "t2.micro"
}