module "vault_secrets" {
  source = "../modules/vault-secrets"
  google_domain_name = "awssidar.com"
  mysql_database = "artemis"
  mysql_user = "artemis"
  policy_name = "k8s_policy"
  mount = "artemis"
  secret_name = "artemis"
  role-name = "artemis-role"
  service_account_name = ["artemis"]
  service_account_namespace = ["artemis"]
}