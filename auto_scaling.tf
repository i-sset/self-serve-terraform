resource "aws_autoscaling_group" "main_asg" {
  name = "${var.name_prefix}-asg"

  desired_capacity = 2
  min_size         = 2
  max_size         = 3

  termination_policies = ["OldestInstance"]

  vpc_zone_identifier  = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
  launch_configuration = aws_launch_configuration.default_configuration.name
}

resource "aws_launch_configuration" "default_configuration" {
  name                        = "${var.name_prefix}-launch-config"
  image_id                    = var.ami
  instance_type               = var.ami_type
  associate_public_ip_address = true
  key_name                    = var.tf_key_pair_name
  user_data                   = file("start-nginx.sh")

  security_groups = [aws_security_group.public_sg.id]

  lifecycle {
    create_before_destroy = true
  }
}