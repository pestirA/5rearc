project                 = "humble-being-293400"
region                  = "us-central1"
location                = "us-central1"
PROJECT_ID              = "humble-being-293400"
IMAGE_NAME              = "abishaiep/quests"
image                   = "us-central1-docker.pkg.dev/humble-being-293400/artifacts/abishaiep/quests" //"gcr.io/humble-being-293400/quests"
name                    = "my-rearcted-final-cluster"
CLUSTER_NAME            = "my-rearcted-final-cluster"
CLUSTER_ZONE            = "us-central1-c"
web_ip                  = "34.111.84.244"  #"34.136.164.149"
my-rearcs-cluster-saddr = "34.136.164.149" #34.111.84.244 - shift to regional static ip
secret-tls              = "twelveFactor"
gke_load_balancer_name  = "quest-ingress-lb"
#NODE_TAG=$(gcloud compute instance-templates describe $(gcloud compute instance-templates list --filter=name~gke-${CLUSTER_NAME:0:20} --limit=1 --uri) --format='get(properties.tags.items[0])')