resource "kubernetes_service" "app" {
  metadata {
    name = var.app
    namespace = kubernetes_namespace.bw-namespace.metadata.0.name
    
  }
  spec {
    selector = {
      app = kubernetes_deployment.app.metadata.0.labels.app
    }
    port {
      
      port        = 80
      target_port = 8000
    }

    # type = "NodePort"
    type = "LoadBalancer"
  }
} 

# resource "kubernetes_ingress" "ingress" {
#   wait_for_load_balancer = true
#   metadata {
#     name = "ingress"
#     namespace = kubernetes_namespace.bw-namespace.metadata.0.name
#     annotations = {
#       "kubernetes.io/ingress.class" = "nginx"
#     }
#   }
#   spec {
#     rule {
#       http {
#         path {
#           path = "/*"
#           backend {
#             service_name = kubernetes_service.app.metadata.0.name
#             service_port = 8000
#           }
#         }
#       }
#     }
#   }
# }