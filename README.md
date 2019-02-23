# terraform-examples

Exemplos de configurações do [Terraform][tf] com a [Amazon Web Services (AWS)][aws], do básico ao complexo ...



# Exemplos disponíveis

Cada diretório é um exemplo, veja os detalhes na tabela abaixo:

| Exemplo                       | Free | Descrição  |
|-------------------------------|------|--------------------------------------------------------------------------|
| exemplo01-aws-t2-micro        | Sim  | Cria 2 instâncias EC2 na AWS |
| exemplo02-aws-dependencies    | Sim  | Cria 1 instância EC2 e atribui um Elastic IP, através de um dependência  |
| exemplo03-aws-provisioners    | Sim  | Cria 1 instância EC2 e configura a instância (provisioner)  |
| exemplo04-variables           | Sim  | Usando variáveis (variables.tf)  |
| exemplo05-modules             | Não  | Usando módulo Consul da Hashicorp. Muito cuidado!!! Você pode ser cobrado.  |

* Free: se refere ao Amazon Free Tier. Em alguns casos pode ocorrer cobrança.

# Configurando as credenciais na amazon

No meu site descrevo como criar as credenciais, veja no link [Terraform: Criando o ~/.aws/credentials e ajustando o Terraform](http://ebasso.net/wiki/index.php?title=Terraform:_Criando_o_aws_credentials_e_ajustando_o_Terraform&action=edit&redlink=1)




# Como executar os exemplos?

Escolha um do diretórios de exemplo e e execute os comandos:


## Cloning terraform-aws-examples from git

```
cd
git clone https://github.com/ebasso/terraform-aws-examples.git
```

## Inicializando o ambiente

```
cd terraform-aws-examples/exemplo01-aws-t2-micro

terraform init
```

## Criando as instâncias/objetos na AWS

```
terraform apply
```

## Deletando as instâncias/objetos na AWS

```
terraform destroy
```



# Authors

* **Enio Basso** - *Initial work* - [My Repository](https://github.com/ebasso)


# License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

# End Of file. :)

[tf]: http://terraform.io
[aws]: https://aws.amazon.com