variable "clusters" {
  type = list(object({
    cluster_name    = string
    cluster_region  = string
    cluster_version = string
    node_size       = string
  }))
  default = []
}

variable "do_token" {
  sensitive = true
}
 