variable "digitalocean_token" {}

#Configura el provider de Digital Ocean
#Se guarda una variable de entorno local

provider "digitalocean" {
    token ="${var.digitalocean_token}"
}