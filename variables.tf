variable "aws_region" {
  type        = string
  description = "The AWS region for the resources"
}

variable "name" {
  type        = string
  description = "The prefix to use for all resource names"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "manage_default_security_group" {
  description = "Set default security group to restrict all traffic of the VPC."
  type        = bool
}

variable "enable_vpc_flow_log" {
  description = "Enabled VPC flow log to capture IP traffic. Logs are sent to s3 bucket."
  type        = bool
}

variable "vpc_flow_log_s3_bucket_arn" {
  type        = string
  default     = ""
  description = "S3 ARN for VPC logs."
  sensitive   = true
}

variable "vpc_flow_log_traffic_type" {
  type        = string
  default     = "ALL"
  description = "Type of traffic to capture in VPC logs. Valid values: ACCEPT, REJECT, ALL."
}

variable "manage_default_route_table" {
  type        = bool
  default     = false
  description = "True to manage the default route table."
}

variable "default_route_table_routes" {
  description = "The routes to add to the default route table for the VPC."
  type        = list(map(string))
  default     = []
}

variable "manage_default_network_acl" {
  type        = bool
  default     = false
  description = "True to manage the default network acl."
}

variable "default_network_acl_egress" {
  description = "The managed default network acl egress rules."
  type        = list(map(string))

  default = [
    {
      rule_no    = 100
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
    }
  ]
}

variable "default_network_acl_ingress" {
  description = "The managed default network acl ingress rules."
  type        = list(map(string))

  default = [
    {
      rule_no    = 100
      action     = "allow"
      cidr_block = "0.0.0.0/0"
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
    }
  ]
}

# Terraform Cloud
variable "TFC_WORKSPACE_SLUG" {
  type        = string
  default     = "local"
  description = "This is the full slug of the configuration used in this run. This consists of the organization name and workspace name, joined with a slash."
}