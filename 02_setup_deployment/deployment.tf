/*Run a null resource to setup context and also get the cluster credentials in kube config?*/
resource "null_resource" "kube-context" {
  provisioner "local-exec" {
    working_dir = path.module
    command     = <<EOT
    gcloud container clusters get-credentials ${var.name} --region ${var.region} --project ${var.PROJECT_ID}
    kubectl config set-context --current --namespace=default
   EOT
  }
}

# Setup a deployment
resource "null_resource" "kube-deployment" {
  provisioner "local-exec" {
    working_dir = path.module
    command     = <<EOT
    kubectl apply -f new-deployment.yaml
   EOT
  }
  depends_on = [null_resource.kube-context]
}

# Setup a loadbalancer -     terraform console output gke_load_balancer_name
resource "null_resource" "service-loadbalancer" {
  provisioner "local-exec" {
    working_dir = path.module
    command     = <<EOT
    kubectl apply -f new-lb.yaml
    kubectl get services
   EOT
  }
  depends_on = [null_resource.kube-deployment]
}
