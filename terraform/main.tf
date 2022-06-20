resource "helm_release" "trivy" {
  name       = "trivy-operator"

  repository = "https://aquasecurity.github.io/helm-charts/"
  chart      = "trivy-operator"

  set {
    name  = "trivy.ignoreUnfixed"
    value = "true"
  }
}