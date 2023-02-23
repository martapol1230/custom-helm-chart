variable "app_version" {
  type = string
}


variable "app_port" {
  type = string
}

variable "app_name" {
  type = string
}

variable "google_domain_name" {
  type = string
}

variable "region" {
  type = string
}

variable "project_id" {
  type = string
}


variable "environment" {
  type = string
}


variable "repository" {
  type = string
}

variable "gke_config" {
  type        = map(any)
  description = "description"
  default = {
    region         = "us-central1"
    zone           = "us-central1-c"
    cluster_name   = "project-cluster"
    machine_type   = "e2-medium"
    node_count     = 1
    node_pool_name = "my-node-pool"
    preemptible    = true
    node_version   = "1.23.5-gke.1500" # finds build version automatically based on region. We can change it to 1.21   . In this case it will automatically find minor version
  }
}

