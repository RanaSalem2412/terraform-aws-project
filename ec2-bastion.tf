resource "aws_instance" "bastion" {
  ami = data.aws_ami.amazon_linux.id  
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.public_1.id
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]

  associate_public_ip_address = true

  tags = {
    Name = "bastion-ec2"
  }
}