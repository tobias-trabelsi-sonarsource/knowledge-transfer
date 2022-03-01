resource "aws_key_pair" "mykeypair" {
  key_name   = "${var.USER}-${var.ENV}"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "demo" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.medium"
  count         = var.amount

  # the public SSH key
  key_name = aws_key_pair.mykeypair.id

  tags = {
    Name            = "demo-${var.USER}"
    Environmnent    = var.ENV
    OS              = "Ubuntu"
  }
}
