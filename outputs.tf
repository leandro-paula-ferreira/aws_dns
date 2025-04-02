output "zone_id" {
  value       = var.create_zone ? aws_route53_zone.this[0].zone_id : data.aws_route53_zone.this[0].zone_id
  description = "O ID da zona hospedada no Route 53"
}

output "nameservers" {
  value       = var.create_zone ? aws_route53_zone.this[0].name_servers : null
  description = "Os nameservers da zona hospedada (necessários para configurar no registrador do domínio)"
}

output "certificate_arn" {
  value       = var.create_certificate ? aws_acm_certificate.this[0].arn : null
  description = "O ARN do certificado"
}

output "certificate_validation_arn" {
  value       = var.create_certificate ? aws_acm_certificate_validation.this[0].certificate_arn : null
  description = "O ARN do certificado validado"
}
