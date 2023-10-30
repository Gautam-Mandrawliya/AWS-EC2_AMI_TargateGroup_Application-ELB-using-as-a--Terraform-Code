output "SecurityGroup" {
  value = aws_security_group.ec2-webserver-sg.id
}

output "Instance-ID" {
  value = aws_instance.ec2-instance.id
}