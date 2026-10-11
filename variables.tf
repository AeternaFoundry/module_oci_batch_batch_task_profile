variable "batch_batch_task_profiles" {
  description = <<EOT
Map of batch_batch_task_profiles, attributes below
Required:
    - compartment_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - min_disk_size_in_gbs
    - min_memory_in_gbs
    - min_ocpus
    - extended_information (block):
        - architecture (optional)
        - shape_name (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id       = string
    defined_tags         = optional(map(string))
    description          = optional(string)
    display_name         = optional(string)
    freeform_tags        = optional(map(string))
    min_disk_size_in_gbs = optional(number)
    min_memory_in_gbs    = optional(number)
    min_ocpus            = optional(number)
    extended_information = optional(object({
      architecture = optional(string)
      shape_name   = optional(string)
      type         = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.batch_batch_task_profiles : (
        v.extended_information == null || (contains([for v in ["CPU_ARCHITECTURE_TASK_PROFILE_EXTENDED_INFORMATION", "CPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION", "GPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION"] : lower(v)], lower(v.extended_information.type)))
      )
    ])
    error_message = "must be one of: \"CPU_ARCHITECTURE_TASK_PROFILE_EXTENDED_INFORMATION\", \"CPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION\", \"GPU_SHAPE_TASK_PROFILE_EXTENDED_INFORMATION\""
  }
}

