resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instatype

  tags = {
    Name = var.name
    owner = var.owner
    purpose = var.purpose
  }
}