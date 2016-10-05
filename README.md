# terraform-ebs
EBS terraform module
example of use:
module "ebs-test-2" {
  source        = "git@github.com:cartest/terraform-ebs.git"
  mod_ebs_azs   = "eu-west-1a"
  mod_ebs_name  = "ebs-test-1"
  mod_ebs_size  = "5"
  mod_ebs_type  = "gp2"
  mod_ebs_mp    = "/opt"
  mod_ebs_dev   = "sdg"
}
Creating 5GB GP2 Volume in eu-west-1a AZ with name ebs-test-1 which should be mounted in /opt path and attached to the instance as sdg device (leading path /dev/ is omitted since its automatically added on attach and mount process in userdata script.
