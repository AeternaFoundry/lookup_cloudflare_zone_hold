data "cloudflare_zone_hold" "zone_hold_lookup" {
  for_each = var.zone_hold_lookup

  zone_id = each.value.zone_id
}

