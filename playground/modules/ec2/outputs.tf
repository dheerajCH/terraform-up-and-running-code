output "module_public_ip" {
  description = "The IP of the Instance"
  value       = aws_instance.example.public_ip
}
