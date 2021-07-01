module "vpc" {
  source                        = "../../"
  aws_region                    = "ap-southeast-2"
  name                          = "alhardynet"
  TFC_WORKSPACE_SLUG            = "local"
  manage_default_security_group = false
  manage_default_route_table    = false
  manage_default_network_acl    = false
}