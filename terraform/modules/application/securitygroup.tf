resource "aws_security_group" "ecs" {
  name        = "${var.environment}-${var.project}-${var.application}-sg"
  description = "${var.environment}-${var.project}-${var.application}-sg"
  vpc_id      = var.vpc_id

  tags = merge(var.tags, {
    Name = "${var.environment}-${var.project}-${var.application}-sg"
  })
}