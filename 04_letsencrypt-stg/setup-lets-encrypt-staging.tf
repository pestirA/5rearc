# https://cert-manager.io/docs/tutorials/getting-started-with-cert-manager-on-google-kubernetes-engine-using-lets-encrypt-for-ingress-ssl/
#    kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.2/cert-manager.yaml

resource "null_resource" "service-cert_manager_view" {
  provisioner "local-exec" {
    working_dir = path.module
    command     = <<EOT
    kubectl -n default get all
   EOT
  }
  #depends_on = [null_resource.service-new-ingress]
}


#issuer-lets-encrypt-staging.yaml
resource "null_resource" "issuer-lets-encrypt-staging" {
  provisioner "local-exec" {
    working_dir = path.module
    command     = <<EOT
    kubectl apply -f issuer-lets-encrypt-staging.yaml
    kubectl describe clusterissuer letsencrypt-staging
   EOT
  }
  depends_on = [null_resource.service-cert_manager_view]
}

# 