variable "AWS_REGION" {    
    default = "us-east-1"
}

variable "rds_engine" {
  description = "O SGBD que será utilizado."
  default = "mariadb"
}

variable "rds_engine_version" {
  description = "A versão do SGBD."
  default = "10.4.8"
}

variable "rds_instance_class" {
  description = "A classe de recursos utilizada."
  default = "db.m5.large"
}

variable "rds_name" {
  description = "O nome que será dado à instancia."
  default = "vinicius"
}

variable "rds_username" {
  description = "O usuário de acesso à instância."
  default = "vinicius"
}

variable "rds_password" {
  description = "A senha do usuário."
  default = "vinicius123"
}

