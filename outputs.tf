output "log_group_arn" {
  value       = local.logging_enabled ? module.cloudwatch_log.log_group_arn : null
  description = "The ARN of the CloudWatch Log Group used for Client VPN connection logging."
}

output "log_group_name" {
  value       = local.logging_enabled ? module.cloudwatch_log.log_group_name : null
  description = "The name of the CloudWatch Log Group used for Client VPN connection logging."
}

output "security_group_arn" {
  value       = local.security_group_enabled ? module.vpn_security_group.arn : null
  description = "The ARN of the security group associated with the Client VPN endpoint."
}

output "security_group_id" {
  value       = local.security_group_enabled ? module.vpn_security_group.id : null
  description = "The ID of the security group associated with the Client VPN endpoint."
}

output "security_group_name" {
  value       = local.security_group_enabled ? module.vpn_security_group.name : null
  description = "The name of the security group associated with the Client VPN endpoint."
}

output "vpn_endpoint_arn" {
  value       = local.enabled ? join("", aws_ec2_client_vpn_endpoint.default[*].arn) : null
  description = "The ARN of the Client VPN Endpoint Connection."
}

output "vpn_endpoint_dns_name" {
  value       = local.enabled ? join("", aws_ec2_client_vpn_endpoint.default[*].dns_name) : null
  description = "The DNS Name of the Client VPN Endpoint Connection."
}

output "vpn_endpoint_id" {
  value       = local.enabled ? join("", aws_ec2_client_vpn_endpoint.default[*].id) : null
  description = "The ID of the Client VPN Endpoint Connection."
}
