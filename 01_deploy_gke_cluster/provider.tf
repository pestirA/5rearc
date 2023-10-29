provider "google" {
  credentials = file("/Users/pestirai/zdemo/google-cloud-creds/credentials.json")
  project     = var.project
  region      = var.region
}

data "google_client_config" "current" {}

provider "kubernetes" {
  config_path = "~/.kube/config"
  #host                   = google_container_cluster.my-rearcs-cluster.endpoint
  token                  = data.google_client_config.current.access_token
  client_certificate     = base64decode(google_container_cluster.my-rearcs-cluster.master_auth[0].client_certificate)
  client_key             = base64decode(google_container_cluster.my-rearcs-cluster.master_auth[0].client_key)
  cluster_ca_certificate = base64decode(google_container_cluster.my-rearcs-cluster.master_auth[0].cluster_ca_certificate)
}


/*
provider "acme" {
  server_url = "https://acme-staging-v02.api.letsencrypt.org/directory"
  #server_url = "https://acme-v02.api.letsencrypt.org/directory"
}*/

provider "tls" {}