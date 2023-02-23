terraform {
  backend "gcs" {
    bucket = "terraform-project-marta"
    prefix = "/dev/mnt/martapol1230/custom_helm_chart/cluster_setup"
  }
}
