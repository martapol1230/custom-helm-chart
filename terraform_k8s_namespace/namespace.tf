module "artemis-namespace" {
    source = "./k8s-namespace"
    labels = {
        app = "artemis"
    }
    namespace_name = "artemis"
}