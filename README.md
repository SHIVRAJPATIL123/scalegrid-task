# Kubernetes Cluster Setup with Redis High Availability on DigitalOcean

## Overview
This repository provides automation for setting up a Kubernetes cluster on DigitalOcean using Terraform and deploying a Redis cluster in a High Availability setup using Helm. The GitHub Actions workflow defined in this repository automates the entire process.

## Getting Started

### Prerequisites
Make sure you have the following prerequisites before running the GitHub Actions workflow:
- Access to DigitalOcean account
- Terraform installed locally
- Helm installed locally
- DigitalOcean API token stored as **DO_TOKEN** in GitHub Secrets
- refer the link https://docs.digitalocean.com/reference/api/create-personal-access-token
- GitHub account

### 1. Clone this Repository
- Clone this repository to your local environment.
  - git clone <repo_url>

### 2. Configure GitHub Secrets
- Navigate to your repository on GitHub.
- Go to "Settings" > "Secrets" > "New repository secret."
- Add a secret named **DO_TOKEN** and set its value to your DigitalOcean API token.

### 3. GitHub Actions Workflow
The GitHub Actions workflow is defined in the **.github/workflows/main.yml** file. This workflow performs the following steps:
- Creates two Kubernetes clusters on DigitalOcean using Terraform.
- Deploys a Redis cluster in a High Availability setup using Helm.

### 4. Trigger the Workflow
Commit and push any change to your cloned repository to trigger the GitHub Actions workflow.


## Demonstration

### 1. Show Clusters Deployment
- After triggering the workflow, monitor the progress in the "Actions" tab on GitHub.
- Verify that the Kubernetes clusters are successfully deployed on DigitalOcean.
- Example commands to check Kubernetes clusters
  - kubectl --kubeconfig=./kubeconfig-cluster1 get nodes
  - kubectl --kubeconfig=./kubeconfig-cluster2 get nodes


### 2. Verify Redis High Availability Setup
- Once the clusters are deployed, verify that the Redis pods are up and running in a High Availability setup.
- Example commands to check Redis pods
  - kubectl --kubeconfig=./kubeconfig-cluster1 get pods -n redis
  - kubectl --kubeconfig=./kubeconfig-cluster2 get pods -n redis

### 3. Redis Master Election
- Simulate a scenario where the master Redis node is deleted to trigger the election of a new master from the available Redis nodes.

### 4. Connectivity Check
- Confirm the connectivity within the Kubernetes clusters and ensure proper communication between nodes.

### 5. kubectl Configuration in Local Environment
- Provide a demonstration of configuring **kubectl** in your local environment to interact with the deployed Kubernetes clusters.

## Conclusion
This repository simplifies the process of setting up Kubernetes clusters on DigitalOcean and deploying a highly available Redis cluster. The GitHub Actions workflow automates the entire process.
