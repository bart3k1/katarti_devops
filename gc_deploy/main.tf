terraform {
  # required_version = "~>0.12"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      # version = "1.13.3"
    }
  }  
  backend "remote" {
    organization = "example-org-b0c1da"
    workspaces {
      name = "bw_kubernetes_app"
    }
  }
}

resource "kubernetes_namespace" "bw-namespace" {
  metadata {
    name = "bw-namespace"
  }
}