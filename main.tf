# create an ec2 instance; the instance will be created in the default VPC
resource "aws_instance" "typical_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"
  subnet_id     = data.aws_subnets.default.ids[0]
  tags = {
    Name = "TypicalInstance"
  }
}