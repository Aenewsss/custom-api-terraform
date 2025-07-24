resource "aws_subnet" "public_1a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(aws_vpc.eks_vpc.cidr_block, 8, 0)
  availability_zone       = "${data.aws_region.current.region}a"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                    = "${var.project}-public-subnet-1a",
      "kubernets.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "public_1b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(aws_vpc.eks_vpc.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.region}b"
  map_public_ip_on_launch = true

  tags = merge(
    local.tags,
    {
      Name                    = "${var.project}-public-subnet-1b",
      "kubernets.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "private_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(aws_vpc.eks_vpc.cidr_block, 8, 2)
  availability_zone = "${data.aws_region.current.region}a"

  tags = merge(
    local.tags,
    {
      Name                             = "${var.project}-private-subnet-1a",
      "kubernets.io/role/internal-elb" = 1
    }
  )
}

resource "aws_subnet" "private_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(aws_vpc.eks_vpc.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.region}b"

  tags = merge(
    local.tags,
    {
      Name                             = "${var.project}-private-subnet-1b",
      "kubernets.io/role/internal-elb" = 1
    }
  )
}

resource "aws_route_table_association" "public_1a_rtb_assoc" {
  route_table_id = aws_route_table.public_rtb.id
  subnet_id      = aws_subnet.public_1a.id
}
resource "aws_route_table_association" "public_1b_rtb_assoc" {
  route_table_id = aws_route_table.public_rtb.id
  subnet_id      = aws_subnet.public_1b.id
}
