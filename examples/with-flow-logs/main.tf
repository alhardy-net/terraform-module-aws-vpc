resource "aws_s3_bucket" "s3_flow_log" {
  bucket = "alhardynet-vpc-flow-logs"
  force_destroy = true
}

module "vpc" {
  source                        = "../../"
  aws_region                    = "ap-southeast-2"
  name                          = "alhardynet"
  TFC_WORKSPACE_SLUG            = "local"
  enable_vpc_flow_log           = true
  vpc_flow_log_s3_bucket_arn    = aws_s3_bucket.s3_flow_log.arn
  manage_default_security_group = false
  manage_default_route_table    = false
  manage_default_network_acl    = false
}