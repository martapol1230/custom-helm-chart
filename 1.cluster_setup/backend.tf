terraform {
  backend "gcs" {
    bucket = "terraform-project-sidar"
    prefix = "/dev/mnt/serdesta/team1-project/project-artemis/cluster-setup"
  }
}