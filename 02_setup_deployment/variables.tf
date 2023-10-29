variable "secret-tls" {
  default     = "twelveFactor"
  description = "kubectl get secret secret-tls"
}
variable "email" {
  default     = "abishaiep@gmail.com"
  description = "contact email"
}
variable "CERTIFICATE_NAME" {
  default     = "myrearcservice-ssl-cert"
  description = "CERTIFICATE_NAME"
}
variable "gke_load_balancer_name" {
  description = "gke_load_balancer_name"
  default     = "quest-ingress-lb"
}

variable "project" {
  default     = "humble-being-293400"
  description = "the google cloud project"
}

variable "PROJECT_ID" {
  default     = "humble-being-293400"
  description = "the google cloud project"
}

variable "name" {
  default     = "my-rearcted-final-cluster"
  description = "the google cloud gke cluster name"
}
variable "web_ip" {
  default     = "34.111.84.244"
  description = "static ip"
}

variable "my-rearcs-cluster-saddr" {
  default     = "34.136.164.149"
  description = "static ip"
}


variable "location" {
  default     = "us-central1"
  description = "the google cloud default location"
}

variable "region" {
  default     = "us-central1"
  description = "the google cloud default region"
}

variable "IMAGE_NAME" {
  default     = "quests"
  description = "the target image name"
}

variable "image" {
  default     = "quests"
  description = "the target image in the gcr path e.g gcr.io/PROJECT_ID/IMAGE_NAME"
}

variable "CLUSTER_NAME" {
  default     = "my-rearcted-final-cluster"
  description = "the target CLUSTER_NAME"
}

variable "CLUSTER_ZONE" {
  default     = "us-central1-c"
  description = "the target CLUSTER_ZONE"
}

variable "node_tag" {
  default = "tf-lb-https-gke"
}

variable "node_port" {
  default = "30000"
}

variable "port_name" {
  default = "http"
}

variable "network_name" {
  default = "humble-being-293400-rearc-vpc"
}
variable "service_port" {
  default = "3000"
}
variable "service_port_name" {
  default = "http"
}
