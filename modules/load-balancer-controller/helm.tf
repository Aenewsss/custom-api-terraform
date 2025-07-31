resource "helm_release" "eks_helm_controller" {
  name       = "load-balancer-controller"
  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"
  version    = "1.4.7"
  namespace  = "kube-system"

  set = [
    {
      name  = "clusterName"
      value = var.cluster_name
    },
    {
      name  = "serviceaccount.create"
      value = "false"
    },
    {
      name  = "serviceaccount.name"
      value = "aws-load-balancer-controller"
    },
    {
      name  = "cluster.enabled"
      value = "true"
    },
    {
      name  = "metrics.enabled"
      value = "true"
    },
    {
      name  = "service.annotations.prometheus\\.io/port"
      value = "9127"
      type  = "string"
    }
  ]
}
