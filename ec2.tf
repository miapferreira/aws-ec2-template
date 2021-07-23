
resource "aws_instance" "estudos" {
  ami = data.aws_ami.ubuntu.id
  key_name                    = var.key_pair
  instance_type               = var.instance_type
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

 
  

  root_block_device { 
    volume_size = var.disk_size
    volume_type = var.volume_type
  }

  tags = {
    Name = "estudos"
  }
  lifecycle {
    create_before_destroy = true
  }
}