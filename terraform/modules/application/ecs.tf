resource "aws_ecs_cluster" "main" {
  count = var.create_ecs_cluster ? 1 : 0
  name  = "${var.environment}-${var.project}-${var.application}"

  tags = merge(var.tags, {
    Name = "${var.environment}-${var.project}-${var.application}"
  })
}