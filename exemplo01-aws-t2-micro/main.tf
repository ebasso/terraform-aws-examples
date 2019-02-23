# Define a região e as credenciais para a AWS
provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "˜/.aws/credentials"
}

# Cria uma instancia EC2 - Ubuntu 18.04
resource "aws_instance" "example01-01" {
  ami           = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"

}

# Cria uma instancia EC2 - Ubuntu 18.04
resource "aws_instance" "example01-02" {
  ami           = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"
}
