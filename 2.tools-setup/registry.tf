resource "google_artifact_registry_repository" "artemis" {
  provider      = google-beta
  location      = var.gke_config["region"]
  repository_id = "artemis"
  description   = "used to store artemis images"
  format        = "DOCKER"
}