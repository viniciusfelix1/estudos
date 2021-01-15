variable "AWS_REGION" {    
    default = "us-east-1"
}

variable "rds_engine" {
  description = "O nome que será dado ao cluster."
  default = "mariadb"
}

variable "rds_engine_version" {
  description = "O nome que será dado ao cluster."
  default = "10.4.8"
}


variable "rds_instance_class" {
  description = "O nome que será dado ao cluster."
  default = "db.m5.large"
}
