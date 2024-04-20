resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "${var.env}-vpc"
  }

}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_block
  

  tags = {
    Name = "${var.env}-subnet"
  }
}

resource "aws_vpc_peering_connection" "main" {
  peer_vpc_id = var.default_vpc_id
  vpc_id      = aws_vpc.main.id
  auto_accept = true

  tags = {
    Name = "${var.env}-vpc-to-default-vpc"
  }
}

resource "aws_route" "main" {
  route_table_id = aws_vpc.main.default_route_table_id
  vpc_peering_connection_id = aws_vpc_peering_connection.main.id
  destination_cidr_block = var.default_vpc_cidr
}

resource "aws_route" "default-vpc" {
  route_table_id = var.default_route_table_id
  vpc_peering_connection_id = aws_vpc_peering_connection.main.id
  destination_cidr_block = var.vpc_cidr_block
}