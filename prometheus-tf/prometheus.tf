terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.11.0"
    }
  }
}

provider "helm" {
      kubernetes {
        config_path = "./kubeconfig.yaml"
      }
}

resource "helm_release" "prometheus" {
  name       = "prometheus"
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"
  namespace  = "monitoring"
  create_namespace = true

  values = [file("../prometheus.yaml")]  # Create this file with your custom configuration
  
}





