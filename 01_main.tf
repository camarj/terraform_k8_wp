resource "digitalocean_kubernetes_cluster" "camarj" {
  name ="camarj"
  region = "nyc1"
  version= "1.15.4-do.0"

  node_pool {
      name = "camarj-nodes"
      size = "s-1vcpu-2gb"
      node_count = 1
      tags = ["camarj-nodes"]
  }
}
