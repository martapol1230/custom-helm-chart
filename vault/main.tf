resource "random_password" "password" {
  length  = 16
  special = false
  numeric = true
}



resource "vault_mount" "kvv2" {
  path        = "project/development"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}


resource "vault_mount" "kvv2us" {
  path        = "eu/development/"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}


# resource "google_sql_database_instance" "artemis" {
#   name                = "artemis"
#   database_version    = "MYSQL_5_7"
#   region              = "us-central1"
#   deletion_protection = false

#   settings {
#     # Second-generation instance tiers are based on the machine
#     # type. See argument reference below.
#     tier = "db-f1-micro"
#   }
# }


# resource "google_sql_user" "users" {
  # name     = "artemis"
#   instance = google_sql_database_instance.artemis.name
#   host     = "artemis.${var.google_domain_name}"
#   password = random_password.password.result
# }