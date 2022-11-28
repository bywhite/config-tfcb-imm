resource "intersight_macpool_pool" "pod_macpool_pool" {
  name = "${var.pod_prefix}-mac-pool"
  description = "ofl-pod1 global mac pool"
  assignment_order = "sequential"
  mac_blocks {
    object_type = "macpool.Block"
    from        = var.pod-mac-block
    size          = "255"
    }
  organization {
    object_type = "organization.Organization"
    moid = data.intersight_organization_organization.default.id
    }
}
