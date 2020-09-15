variable "vpc_name" {
  type        = string
  description = "VPC Name"
  default     = "Dheeraj VPC"
}

variable "cidr_block" {
  type        = string
  description = "CIDR for the VPC and Subnet"
  default     = "10.0.0.0/16"
}

//output "vpc_name" {
//  description = "The name of the VPC"
//  value       = aws_vpc.vpc.tags.Name
//}

//output "public_ip" {
//  description = "The IP of the Instance"
//  value       = aws_instance.example.public_ip
//}

//output "subnet_id" {
//  description = "The ID of the Subnet"
//  value       = data.aws_subnet_ids.default.ids
//}