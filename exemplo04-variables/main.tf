# Define a região e as credenciais para a AWS
#provider "aws" {
#  region     = "${var.region}"
#  shared_credentials_file = "${var.shared_credentials_file}"
#}

#resource "aws_instance" "example04-01" {
#  ami           = "${lookup(var.amis, var.region)}"
#  instance_type = "t2.micro"
#}
## lookup -> faz a pesquisa em um map por uma chave
## 
## Podemos usar também a forma:
##   ami           = "${var.amis["us-east-1"]}"
 
output "exemplo01" {
  value           = "${var.myVar}"
}

 output "exemplo02" {
  value           = "${lookup(var.amis, var.region)}"
}

output "exemplo03" {
  value           = "${var.amis["us-west-2"]}"
}

output "exemplo04" {
  value = "${lookup(var.amis2, var.region)}"
}