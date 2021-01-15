data "aws_subnet" "get-subnet1" {
  filter {
    name = "tag:Name"
    values = ["Teste-Vinicius-1"]
   } 
}

data "aws_subnet" "get-subnet2" {
  filter {
    name = "tag:Name"
    values = ["Teste-Vinicius-2"]
   } 
}

#resource "aws_db_parameter_group" "default" {
#  name = "mariadb"
#  family = "mariadb10.5"
#}

resource "aws_db_subnet_group" "default" {
  name = "main"
  subnet_ids = [data.aws_subnet.get-subnet1.id, data.aws_subnet.get-subnet2.id]
}

resource "aws_db_instance" "default" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = var.rds_engine
  engine_version = var.rds_engine_version
  instance_class = var.rds_instance_class
  name = "teste-vinicius"
  username = "ballot"
  password = "ballot123"
#  parameter_group_name = aws_db_parameter_group.default.name
  db_subnet_group_name = aws_db_subnet_group.default.name
  multi_az = true
}

resource "aws_db_snapshot" "default" {
  db_instance_identifier = aws_db_instance.default.id
  db_snapshot_identifier = "db_teste-vinicius"
}


