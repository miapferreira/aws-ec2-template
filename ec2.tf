
resource "aws_instance" "k8s" {
  ami                         = data.aws_ami.ubuntu.id
  count                       = 3
  key_name                    = "suakey"
  instance_type               = "t3.medium"
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.ec2_sg-k8s.id
  ]




  root_block_device {
    volume_size = var.disk_size
    volume_type = var.volume_type
  }

  tags = {
    Name = "estudos-k8s"
  }
  lifecycle {
    create_before_destroy = true
  }
}