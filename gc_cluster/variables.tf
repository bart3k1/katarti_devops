variable "project" {
  default = "bartek-wegrzyn"
}

variable "region" {
  default = "europe-central2"
}

variable "zone" {
  default = "europe-central2-c"
}

variable "cluster" {
  default = "bw-cluster"
}

variable "credentials" {
  default = "~/.ssh/bartek-wegrzyn-c234f0a480ae.json"
}

variable "kubernetes_min_ver" {
  default = "latest"
}

variable "kubernetes_max_ver" {
  default = "latest"
}

variable "machine_type" {
  default = "g1-small"
}

variable "app_name" {
  default = "falcon-app"
}
