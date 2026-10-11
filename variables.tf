variable "zone_hold_lookup" {
  description = <<EOT
Map of zone_hold_lookup, attributes below
Optional:
    - zone_id
EOT

  type = map(object({
    zone_id = optional(string)
  }))
}

