resource "aws_instance" "basset_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "basset-app"
  }
  vpc_security_group_ids = [aws_security_group.basset_ec2_sg.id]
  user_data = filebase64("userdata.sh")
}