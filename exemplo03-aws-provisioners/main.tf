# Define a região e as credenciais para a AWS
provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "˜/.aws/credentials"
}

# Cria uma instância EC2 - Ubuntu 18.04
resource "aws_instance" "example03-01" {
  ami           = "ami-0080e4c5bc078760e"
  instance_type = "t2.micro"

  # local-exec -> Provisioner que executa um comando na máquina onde o terraform está sendo executado
  provisioner "local-exec" {
    command = "echo ${aws_instance.example01.public_ip} > ip_address.txt"
  }
}

# Se um recurso é criado com sucesso, mas falhar durante o provisionamento, 
# o Terraform apresentará um erro e marcará o recurso como "tainted" (contaminado).

