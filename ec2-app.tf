resource "aws_instance" "app" {
  ami = data.aws_ami.amazon_linux.id  
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.private_1.id
  vpc_security_group_ids = [aws_security_group.app_sg.id]

  associate_public_ip_address = false

  tags = {
    Name = "app-ec2"
  }
}