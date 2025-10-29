resource "aws_key_pair" "cmtr-0485d781-keypair" {
  key_name   = "cmtr-0485d781-keypair"
  public_key = var.ssh_key

  tags = {
    Project = "epam-tf-lab"
    ID      = "cmtr-0485d781"
  }
}
