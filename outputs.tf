output "zone_hold_lookup_id" {
  description = "Map of id values across all zone_hold_lookup, keyed the same as var.zone_hold_lookup except keys with no id are omitted"
  value       = { for k, v in data.cloudflare_zone_hold.zone_hold_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "zone_hold_lookup_hold" {
  description = "Map of hold values across all zone_hold_lookup, keyed the same as var.zone_hold_lookup except keys with no hold are omitted"
  value       = { for k, v in data.cloudflare_zone_hold.zone_hold_lookup : k => v.hold if v.hold != null }
}
output "zone_hold_lookup_hold_after" {
  description = "Map of hold_after values across all zone_hold_lookup, keyed the same as var.zone_hold_lookup except keys with no hold_after are omitted"
  value       = { for k, v in data.cloudflare_zone_hold.zone_hold_lookup : k => v.hold_after if v.hold_after != null && length(v.hold_after) > 0 }
}
output "zone_hold_lookup_include_subdomains" {
  description = "Map of include_subdomains values across all zone_hold_lookup, keyed the same as var.zone_hold_lookup except keys with no include_subdomains are omitted"
  value       = { for k, v in data.cloudflare_zone_hold.zone_hold_lookup : k => v.include_subdomains if v.include_subdomains != null && length(v.include_subdomains) > 0 }
}
output "zone_hold_lookup_zone_id" {
  description = "Map of zone_id values across all zone_hold_lookup, keyed the same as var.zone_hold_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_zone_hold.zone_hold_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

