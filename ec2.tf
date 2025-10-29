resource "aws_instance" "cmtr-0485d781-ec2" {
  ami                    = "ami-0601422bf6afa8ac3"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.cmtr-0485d781-keypair.key_name
  subnet_id              = "subnet-0d55083324ec0fa8d"
  vpc_security_group_ids = ["sg-06832117a4c7ca0f1"]

  tags = {
    Name    = "cmtr-0485d781-ec2"
    Project = "epam-tf-lab"
    ID      = "cmtr-0485d781"
  }
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.cmtr-0485d781-ec2.public_ip
}
