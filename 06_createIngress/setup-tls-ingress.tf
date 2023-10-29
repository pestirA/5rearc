#update the tls ingres after validation of step 05a
resource "null_resource" "apply-tls-ingress" {
  provisioner "local-exec" {
    working_dir = path.module
    command     = <<EOT
    kubectl apply -f tls-ingress.yaml
    kubectl get ingress
    kubectl get pods
   EOT
  }
}