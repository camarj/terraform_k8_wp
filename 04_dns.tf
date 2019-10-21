resource "digitalocean_domain" "camarj" {
  name = "camarj.com"
}

# Agregar un registro A al dominio

resource "digitalocean_record" "test" {
    domain = "${digitalocean_domain.camarj.name}"
    type ="A"
    name = "test"
    ttl = "30"
    value = "${digitalocean_loadbalancer.public.ip}"
  
}

