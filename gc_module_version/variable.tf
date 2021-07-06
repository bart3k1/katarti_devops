variable "project_id" {
  description = "The project ID to host the cluster in"
  default = "bartek-wegrzyn"
}
variable "cluster_name" {
  description = "The name for the GKE cluster"
  default     = "bw-cluster"
}
variable "env_name" {
  description = "The environment for the GKE cluster"
  default     = "prod"
}
variable "region" {
  description = "The region to host the cluster in"
  default = "europe-central2"
}
variable "network" {
  description = "The VPC network created to host the cluster in"
  default     = "bw-network"
}
variable "subnetwork" {
  description = "The subnetwork created to host the cluster in"
  default     = "bw-subnet"
}
variable "ip_range_pods_name" {
  description = "The secondary ip range to use for pods"
  default     = "ip-range-pods"
}
variable "ip_range_services_name" {
  description = "The secondary ip range to use for services"
  default     = "ip-range-services"
}


variable "zone" {
  default = "europe-central2-c"
}