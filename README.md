## A quest in the clouds
# Q. What is this quest?
It is a fun way to assess cloud skills. It is also a good representative sample of the work we do at Rearc. 
Quest is a webapp made with node.js and golang.
The demo makes use of GitHub, GCP, DockerHub and Terraform TO  demonstrate some of the capabilities of Containerizing and Application then Deployment to GCP

# REARC Quest Lab
Thanks for the Opportunity! This code is meant to demonstrate some of the capabilities of Containerizing and Application then Deployment to GCP - GKE, Artifact Registry, GCE, VPC, GCE, 

To get started, there are few prerequisites to get started .
A functional GCP Account

# Prerequisites
The demo makes use of GitHub, GCP, DockerHub and Terraform

# Overview
Source - Create a new Repo - [https://github.com/pestirA/quests](https://github.com/pestirA/5rearc) Containerization Use IAC to deploy Sample Application Deployment Deploy the App in Container in GCP Secret Management Deploy a load balancer Add TLS

# Why IAC
Reduced the system management overhead for infrastructure developers to manage infrastructure with api's while keeping a repository of changes commited

Repave Infrastructure A mechanism to repave environments with agility and repeatable service and application blueprints

Cloud Enablement Agile and repeatable service enablement to better scale the business and onboard new workloads with end to end blueprints

# Demonstrated Skills
Local Development
Created DockerFile In the Node.js application's GitHub repository, create a Dockerfile that defines how your Node.js application should be containerized You are now ready to incorporate your terraform modules Validated local development as shown below

# Development
Setup a terraform configuration that will deploy our nodejs container to the Artifact Registry Set Up Terraform for GKE Service Create a Terraform configuration (e.g., main.tf) to define your GKE cluster, node pool, and any other required resources. We makes sure to set up authentication and specify the Docker image you want to deploy. To get started, we create a terraform directory to ring fence our files for terraform Created a gke.tf file to hold the core deployment details Created a variables.tf file with our target variables for the project, region and image and setup defaults Created terraform.tfvars file with our target key value pairs to match the variables defined in the main file Setup the Cloud Build configuration file (cloudbuild.yaml) to automate the container build process of the docker and shipped it to googles artifact repository. Setup a load balancer code in the gke.tf

# Test then Deployment
Trigger Plan and Apply Deployment Validated deployment via terraform init terraform fmt terraform validate terraform plan terraform apply

# Q. So what skills did I demonstrate I have?
Public cloud: AWS, GCP, Azure.
More than one cloud is a "good to have" but one is a "must have".
General cloud concepts, especially networking.
Containerization, such as: Docker, containerd, kubernetes
IaC (Infrastructure as code). At least some Terraform preferred.
Linux (or other POSIX OS).
VCS (Version Control System). Git is highly preferred.
TLS is a plus.

# Q. What do I have to do?
You may do all or some of the following tasks. Please read over the complete list before starting.

If you know how to use git, start a git repository (local-only is acceptable) and commit all of your work to it.
Use Infrastructure as Code (IaC) to the deploy the code as specified below.
Terraform is ideal, but use whatever you know, e.g. CloudFormation, CDK, Deployment Manager, etc.
Deploy the app in a container in any public cloud using the services you think best solve this problem.
Use node as the base image. Version node:10 or later should work.
Navigate to the index page to obtain the SECRET_WORD.
Inject an environment variable (SECRET_WORD) in the Docker container using the value on the index page.
Deploy a load balancer in front of the app.
Add TLS (https). You may use locally-generated certs.
Q. How do I know I have solved these stages?
Each stage can be tested as follows (where <ip_or_host> is the location where the app is deployed):

# Assets
Public cloud & index page (contains the secret word) - https://rearc.abishaiep.io/
Docker check - https://rearc.abishaiep.io/docker
Secret Word check - http://rearc.abishaiep.io/secret_word
Load Balancer check - http://rearc.abishaiep.io/loadbalanced
TLS check - https://rearc.abishaiep.io/tls

# Q. Do I have to do all these?
Extra credit - Deploy the same assets across AWS, GCP or Azure if you are able to submit working entries for more than one cloud provider.

# Work assets
A link to a hosted git repository.
A compressed file containing your project directory (zip, tgz, etc). Include the .git sub-directory if you used git.
Proof of completion, as one or both of the following:
Link(s) to hosted public cloud deployment(s).
One or more screenshots showing, at least, the index page of the final deployment in one or more public cloud(s) you have chosen.
An answer to the prompt: "Given more time, I would improve..."
Discuss any shortcomings/immaturities in your solution and the reasons behind them (lack of time is a perfectly fine reason!)
This may carry as much weight as the code itself
Your work assets should include:

IaC files, if you completed that task.
One or more Dockerfiles, if you completed that task.
A sensible README or other file(s) that contain instructions, notes, or other written documentation to help us review and assess your submission.
Note - the more this looks like a finished solution to deliver to a customer, the better.

# Q. How long do I need to host my submission on public cloud(s)?
You don't have to at all if you don't want to. You can run it in public cloud(s), grab a screenshot, then tear it all down to avoid costs.

If you want to host it longer for us to view it, we recommend taking a screenshot anyway and sending that along with the link. 
Then you can tear down the quest whenever you want and we'll still have the screenshot. 
We recommend waiting no longer than one week after sending us the link before tearing it down.

Q. Do I have to spend money out of my own pocket to complete the quest?
No. There are many possible solutions to this quest that would be zero cost to you when using AWS, GCP, or Azure.

# About
A quest in the clouds - The demo makes use of GitHub, GCP, DockerHub and Terraform TO demonstrate some of the capabilities of Containerizing and Application then Deployment to GCP
