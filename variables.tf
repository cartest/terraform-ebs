#EBS creation related
variable "mod_ebs_name" {
  type = "string"
  description = "Usually is your hostname of the instance for which you create EBS volume"
  default = ""
}
variable "mod_ebs_is_encrypt" {
  type = "string"
  description = "Should the volume need to be encrypted, default is false"
  default = false
}
variable "mod_ebs_type" {
  type = "string"
  description = "specify one of AWS volumes types, default gp2"
  default = "gp2"
}
variable "mod_ebs_size" {
  type = "string"
  description = "Specify instance size in GB"
  default = ""
}
variable "mod_ebs_use_snap" {
  type = "string"
  description = "Use snapshot for voulume source, snapshot have to fit volume so the volume  size cannot be smaller than snapshot"
  default = ""
}
variable "mod_ebs_az" {
  type = "string"
  description = "specify availibility zone where volume will exist"
  default = ""
}
variable "mod_ebs_env" {
  type = "string"
  description = "used for tags, Environment tag"
  default = ""
}
variable "mod_ebs_app" {
  type = "string"
  description = "used for tags, Application tag"
  default = ""
}
variable "mod_ebs_tier" {
  type = "string"
  description = "used for tags, Tier tag"
  default = ""
}
variable "mod_ebs_role" {
  type = "string"
  description = "used for tags, Role tag.Also that tag will be used for microservice terrafrom userdata script to attach to the instance which that role"
  default = ""
}
variable "mod_ebs_mp" {
  type = "string"
  description = "specify mountpoint for the volume, it can be anything except for /(root) scope, his is also used for userdata.sh which is used inside EC2 instance userdata to determine where the volume neet to mounted" 
  default = ""
}
variable "mod_ebs_dev" {
  type = "string"
  description = "specify device name to be attached in devices folder, this is also used for userdata.sh which is used inside EC2 instance userdata to determine on what name volume will appear in EC2 description page" 
  default = "sdf"
}
