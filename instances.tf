resource "aws_instance" "josset_instance" {
  ami           = var.ami
  instance_type = var.ami_type
  key_name      = "tf-key-pair"

  subnet_id                   = aws_subnet.public_subnet_1.id
  vpc_security_group_ids      = [aws_security_group.public_sg.id]
  associate_public_ip_address = true
  user_data                   = file("start-nginx.sh")

  tags = {
    Name = "${var.name_prefix}-instance"
  }
}