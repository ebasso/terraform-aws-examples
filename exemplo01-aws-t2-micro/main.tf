# Define a região e as credenciais para a AWS
provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "˜/.aws/credentials"
  # profile = "terraform"
}

# Cria uma instancia EC2 - Ubuntu 18.04
resource "aws_instance" "example01-01" {
  ami           = "ami-035be7bafff33b6b6"
  instance_type = "t2.micro"
  tags = {
    Name = "ebasso-labs-amilinux2"
  }
}

# Cria uma instancia EC2 - Ubuntu 18.04
resource "aws_instance" "example01-02" {
  ami           = "ami-0ac019f4fcb7cb7e6"
  instance_type = "t2.micro"
  tags = {
    Name = "ebasso-labs-ubuntu18.04"
  }
}
