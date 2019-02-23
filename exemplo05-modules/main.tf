provider "aws" {
  region     = "us-east-1"
  shared_credentials_file = "˜/.aws/credentials"
}

# Para verificar a versão acessar a url https://registry.terraform.io/modules/hashicorp/consul/aws/
module "consul" {
  source = "hashicorp/consul/aws"
  version = "0.5.0"
  num_servers = "2"
}