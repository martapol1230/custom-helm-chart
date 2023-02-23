# module "artemis-namespace" {
#   source= "../../terraform-k8s-namespace"
#   deployment_namespace = "artemis"
# }


module "artemis" {
  source    = "../../terraform-k8s-namespace"
  name      = "artemis"
  namespace = "artemis"
  chart     = "application"
  wait      = false
  values = <<EOF
controller:
  image: "docker.pkg.dev/terraform-project-marta/artemis/artemis"
  tag: "9fb25115355fc2c804fd92fb4ce3802a3a30277c"
  
  ingress:
  enabled: true
  className: "nginx"
  annotations: 
    cert-manager.io/cluster-issuer: letsencrypt-prod
  hosts:
    - host: application.clouddomaincard.com
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: 
   - secretName: artemis
     hosts:
       - "application.clouddomaincard.com"
EOF
}
