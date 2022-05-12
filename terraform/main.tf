resource "helm_release" "starboard" {
  name       = "starboard-operator"

  repository = "https://aquasecurity.github.io/helm-charts/"
  chart      = "starboard-operator"

  set {
    name  = "trivy.ignoreUnfixed"
    value = "true"
  }
}