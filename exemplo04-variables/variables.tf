variable "region" {
  default     = "us-east-1"
}

variable "shared_credentials_file" {
  default = "˜/.aws/credentials"
}

variable "myVar" {
  description = "provide any value"
}


# List --> implicitly by using brackets [...]
variable "cidrs" { 
    default = [ "10.0.0.0/16", "10.1.0.0/16" ] 
}

# List --> explicitly
#variable "cidrs2" { 
#    type = "list" 
#}

# Maps
variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-AAAAAAA"
    "us-west-2" = "ami-BBBBBBB"
  }
}

# Maps, usando o arquivo terraform.tfvars
variable "amis2" {
  type = "map"
}