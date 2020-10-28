resource "kubernetes_csi_driver" "efs" {
  count = var.create_csi_driver_resource ? 1 : 0

  metadata {
    name = "efs.csi.aws.com"
  }

  spec {
    attach_required = true
  }
}
