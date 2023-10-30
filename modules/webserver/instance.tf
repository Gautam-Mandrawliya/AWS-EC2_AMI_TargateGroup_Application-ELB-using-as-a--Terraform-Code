resource "aws_instance" "ec2-instance" {
  ami                    = var.ami
  availability_zone      = var.availability_zone
  instance_type          = var.instance_type
  vpc_security_group_ids = ["${aws_security_group.ec2-webserver-sg.id}"]
  tags = {
    Name  = "Webserver"
  }
}