resource "aws_instance" "ec2_instance" {

  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]


  tags = {
    Name = var.ec2_tag_name
  }
}

resource "aws_security_group" "sg" {
  name        = var.security_group_name
  description = var.sg_description

  ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = [var.allowed_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.allowed_cidr]
  }
  # tags = {
  #   Name = var.sg_tag_name
  # }

  tags = var.tags

}


