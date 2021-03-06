resource "kubernetes_deployment" "app" {
  metadata {
    name = var.app
    namespace = kubernetes_namespace.bw-namespace.metadata.0.name
    labels = {
      app = var.app
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels = {
        app = var.app
      }
    }

    template {
      metadata {
        labels = {
          app = var.app
        }
      }

      spec {
        container {
          image = var.docker-image
          name  = var.app
          port {
            name           = "port-8000"
            container_port = 8000
          }
        }
      }
    }
  }
}