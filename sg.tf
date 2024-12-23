resource "aws_security_group" "food_db_sg" {
  name = "security_group_name"

  ingress {
    from_port   = 5433
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}