terraform {
  backend "gcs" {
    bucket = "terraform-project-marta"
    prefix = "/dev/mnt/martapol1230/project_infrastructure/1.cluster_setup"
  }
}
