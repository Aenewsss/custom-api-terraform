resource "aws_nat_gateway" "ngw_1a" {
  subnet_id     = aws_subnet.public_1a.id
  allocation_id = aws_eip.eip_1a.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project}-ngw-1a",
    }
  )

  depends_on = [aws_internet_gateway.vpc_igw]
}

resource "aws_nat_gateway" "ngw_1b" {
  subnet_id     = aws_subnet.public_1b.id
  allocation_id = aws_eip.eip_1b.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project}-ngw-1b",
    }
  )

  depends_on = [aws_internet_gateway.vpc_igw]
}

resource "aws_eip" "eip_1a" {
  domain = "vpc"
}

resource "aws_eip" "eip_1b" {
  domain = "vpc"
}
