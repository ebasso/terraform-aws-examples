provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "˜/.aws/credentials"
}
resource "aws_instance" "example01" {
  ami           = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example01.public_ip} > ip_address.txt"
  }
}
resource "aws_eip" "ip" {
  instance = "${aws_instance.example01.id}"
}
