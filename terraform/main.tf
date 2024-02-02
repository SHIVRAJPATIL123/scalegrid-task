resource "digitalocean_kubernetes_cluster" "clusters" {
  for_each = { for idx, cluster in var.clusters : idx => cluster }
  name     = each.value.cluster_name
  region   = each.value.cluster_region
  version  = each.value.cluster_version
  node_pool {
    name       = "pool-default"
    size       = each.value.node_size
    node_count = 1
  }
}