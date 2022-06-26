output "ip_address" {
  value = aws_instance.k8s[*].public_ip
}