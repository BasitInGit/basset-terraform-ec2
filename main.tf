resource "aws_instance" "basset_ec2" {
  ami           = "ami-07524133e69bdba59"
  instance_type = "t3.micro"
  key_name      = "pairing"
  tags = {
    Name = "basset-app"
  }

}