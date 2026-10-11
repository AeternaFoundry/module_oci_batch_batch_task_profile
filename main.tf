resource "oci_batch_batch_task_profile" "batch_batch_task_profiles" {
  for_each = var.batch_batch_task_profiles

  compartment_id       = each.value.compartment_id
  defined_tags         = each.value.defined_tags
  description          = each.value.description
  display_name         = each.value.display_name
  freeform_tags        = each.value.freeform_tags
  min_disk_size_in_gbs = each.value.min_disk_size_in_gbs
  min_memory_in_gbs    = each.value.min_memory_in_gbs
  min_ocpus            = each.value.min_ocpus

  dynamic "extended_information" {
    for_each = each.value.extended_information != null ? [each.value.extended_information] : []
    content {
      architecture = extended_information.value.architecture
      shape_name   = extended_information.value.shape_name
      type         = extended_information.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

