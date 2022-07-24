resource "aws_ecr_repository" "redis" {
  count                = var.create_ecr_redis ? 1 : 0
  name                 = "redis"
  image_tag_mutability = "MUTABLE"

  tags = merge(var.tags, {
    Name = "${var.environment}-${var.project}-ecr-redis"
  })
}

resource "aws_ecr_repository" "flask_app" {
  count                = var.create_ecr_flask_app ? 1 : 0
  name                 = "flask-app"
  image_tag_mutability = "MUTABLE"

  tags = merge(var.tags, {
    Name = "${var.environment}-${var.project}-ecr-flask-app"
  })
}