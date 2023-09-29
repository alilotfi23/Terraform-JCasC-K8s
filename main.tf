resource "kubernetes_namespace" "jenkins" {
  metadata {
    name = "jenkins"
    labels = {
      name        = "jenkins"
      description = "jenkins"
    }
  }
}
resource "helm_release" "jenkins" {
  name       = "jenkins"
  repository = "https://charts.jenkins.io"
  chart      = "jenkins"
  version    = "4.2.17"
  namespace  = "jenkins"
  timeout    = 300
  values = [
    file("values.yaml"),
  ]
}
