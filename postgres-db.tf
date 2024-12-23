resource "aws_db_instance" "food_db" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "postgres"
  engine_version         = "16.3"
  instance_class         = "db.t2.micro"
  identifier             = "food_db"
  username               = var.db_username
  password               = var.db_password
  publicly_accessible    = true
  parameter_group_name   = "default.postgres16"
  vpc_security_group_ids = [aws_security_group.food_db_sg.id]
  skip_final_snapshot    = true
}