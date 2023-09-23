terraform {
  required_providers {
    kubectl = {
      source = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

provider "kubectl" {
  # Configuration options
  config_path = "../kubeconfig.yaml"
}

resource "kubectl_manifest" "deploy" {
  yaml_body = file("../kubeconfig.yaml")
}
