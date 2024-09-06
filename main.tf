# Define a Kubernetes namespace for Jenkins
resource "kubernetes_namespace" "jenkins" {
  metadata {
    # Set the name of the namespace to "jenkins"
    name = "jenkins"
    
    # Define labels for the namespace for identification and organization
    labels = {
      name        = "jenkins"          # The name label for the namespace
      description = "jenkins"          # A description label for the namespace
    }
  }
}

# Define a Helm release for deploying Jenkins
resource "helm_release" "jenkins" {
  name       = "jenkins"                            # Name of the Helm release
  repository = "https://charts.jenkins.io"         # Helm chart repository URL
  chart      = "jenkins"                            # Name of the Helm chart to deploy
  version    = "4.2.17"                             # Specific version of the Helm chart to use
  namespace  = kubernetes_namespace.jenkins.metadata[0].name  # Namespace where Jenkins will be deployed
  timeout    = 300                                   # Timeout in seconds for the Helm release operation

  # Specify the values file for customizing the Helm chart deployment
  values = [
    file("values.yaml"),                             # Path to the values file containing configuration settings
  ]
}
