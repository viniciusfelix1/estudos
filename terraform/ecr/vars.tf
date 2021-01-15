variable "AWS_REGION" {    
    default = "us-east-1"
}

variable "repo-name" {
  description = "O nome que será dado ao repositório."
  default = ["teste-vinicius", "teste-02"]
}

variable "image-mutability" {
  description = "Se as tags poderão ser alteradas. Opções 'MUTABLE' ou 'IMMUTABLE'"
  default = "MUTABLE"
}
