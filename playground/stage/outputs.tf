output "public_ip" {
  description = "The IP of the Instance"
  value       = module.ec2.module_public_ip
}
