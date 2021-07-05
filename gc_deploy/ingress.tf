# resource "kubernetes_service" "ingress-svc" {
#   metadata {
#     name = "ingress-service"
#   }
#   spec {
#     port {
#       port = 80
#       target_port = 80
#       protocol = "TCP"
#     }
#     type = "NodePort"
#   }
# }

# resource "kubernetes_ingress" "ingress" {
#   wait_for_load_balancer = true
#   metadata {
#     name = "ingress"
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
#             service_name = kubernetes_service.example.metadata.0.name
#             service_port = 8000
#           }
#         }
#       }
#     }
#   }
# }