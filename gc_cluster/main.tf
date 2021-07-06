terraform {
  # required_version = "~>0.12"
  backend "remote" {
    organization = "example-org-b0c1da"
    workspaces {
      name = "bw_cluster_ws"
    }
  }
}

resource "google_container_cluster" "primary" {
  name               = var.cluster
  location           = var.zone
  initial_node_count = 1

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  master_auth {
    # username = ""
    # password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    # metadata = {
    #   disable-legacy-endpoints = "true"
    # }

    labels = {
      app = var.app_name
    }

    tags = ["app", var.app_name]
  }

}