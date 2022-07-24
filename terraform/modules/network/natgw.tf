resource "aws_nat_gateway" "natgw" {
  count         = var.create_natgw ? 1 : 0
  allocation_id = aws_eip.natgw[0].id
  subnet_id     = aws_subnet.public[0].id

  tags = merge(var.tags, {
    Name = "${var.environment}-${var.project}-natgw"
  })

  depends_on = [
    aws_eip.natgw
  ]
}

resource "aws_eip" "natgw" {
  count = var.create_natgw ? 1 : 0
  vpc   = true

  tags = merge(var.tags, {
    Name = "${var.environment}-${var.project}-natgw-eip"
  })
}