variable "domain_name" {
  description = "Nome de domínio para a zona do Route53"
  type        = string
}

variable "tags" {
  description = "Tags dos recursos"
  type        = map(string)
  default     = {}
}

variable "create_zone" {
  description = "Se deve criar uma nova zona Route53 ou usar uma existente"
  type        = bool
  default     = true
}

variable "create_certificate" {
  description = "Se deve criar um certificado ACM para o domínio"
  type        = bool
  default     = true
}

variable "zone_id" {
  description = "ID da zona Route53 existente (quando create_zone = false)"
  type        = string
  default     = null
}
