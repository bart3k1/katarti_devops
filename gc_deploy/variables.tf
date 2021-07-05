variable "cluster" {
  default = "bw-cluster"
}

variable "app" {
  type        = string
  description = "Name of application"
  default     = "falcon-app"
}

variable "zone" {
  default = "europe-central2-c"
}

variable "docker-image" {
  type        = string
  description = "name of the docker image to deploy"
  default     = "bart3k1/falcon_app:latest"
}

