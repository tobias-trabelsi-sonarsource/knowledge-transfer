data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_key_pair" "mykeypair" {
  key_name   = "${var.USER}-${var.ENV}"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow-ssh-${var.USER}"
  description = "security group that allows ssh ingress and all egress traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Environmnent = var.ENV
    User         = var.USER
  }
}

resource "aws_instance" "demo" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.medium"

  # the public SSH key
  key_name = aws_key_pair.mykeypair.id

  security_groups = [ aws_security_group.allow_ssh.name ]

  tags = {
    Name            = "demo-${var.USER}"
    Environmnent    = var.ENV
  }
}
