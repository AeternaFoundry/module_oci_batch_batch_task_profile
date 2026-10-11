output "batch_batch_task_profiles_id" {
  description = "Map of id values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no id are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "batch_batch_task_profiles_compartment_id" {
  description = "Map of compartment_id values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no compartment_id are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "batch_batch_task_profiles_defined_tags" {
  description = "Map of defined_tags values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no defined_tags are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "batch_batch_task_profiles_description" {
  description = "Map of description values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no description are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "batch_batch_task_profiles_display_name" {
  description = "Map of display_name values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no display_name are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "batch_batch_task_profiles_extended_information" {
  description = "Map of extended_information values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no extended_information are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => one(v.extended_information) if v.extended_information != null && length(v.extended_information) > 0 }
}
output "batch_batch_task_profiles_freeform_tags" {
  description = "Map of freeform_tags values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "batch_batch_task_profiles_min_disk_size_in_gbs" {
  description = "Map of min_disk_size_in_gbs values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no min_disk_size_in_gbs are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.min_disk_size_in_gbs if v.min_disk_size_in_gbs != null }
}
output "batch_batch_task_profiles_min_memory_in_gbs" {
  description = "Map of min_memory_in_gbs values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no min_memory_in_gbs are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.min_memory_in_gbs if v.min_memory_in_gbs != null }
}
output "batch_batch_task_profiles_min_ocpus" {
  description = "Map of min_ocpus values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no min_ocpus are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.min_ocpus if v.min_ocpus != null }
}
output "batch_batch_task_profiles_state" {
  description = "Map of state values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no state are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.state if v.state != null && length(v.state) > 0 }
}
output "batch_batch_task_profiles_system_tags" {
  description = "Map of system_tags values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no system_tags are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "batch_batch_task_profiles_time_created" {
  description = "Map of time_created values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no time_created are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "batch_batch_task_profiles_time_updated" {
  description = "Map of time_updated values across all batch_batch_task_profiles, keyed the same as var.batch_batch_task_profiles except keys with no time_updated are omitted"
  value       = { for k, v in oci_batch_batch_task_profile.batch_batch_task_profiles : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

