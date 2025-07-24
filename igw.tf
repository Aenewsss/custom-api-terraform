resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project}-igw"
    }
  )
}

resource "aws_route_table" "public_rtb" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc_igw.id
  }


  tags = merge(
    local.tags,
    {
      Name = "${var.project}-public-rtb"
    }
  )
}


