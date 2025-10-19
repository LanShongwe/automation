resource "aws_vpc" "this" {
  cidr_block       = "192.168.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "terraform-vpc"
  }
}

resource "aws_subnet" "subnets_az1" {
  for_each          = { "public-subnet1_az1" : "192.168.0.0/27", "private-subnet1_az1" : "192.168.0.64/27", "private-subnet2_az1" : "192.168.0.96/27" }
  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value
  availability_zone = "eu-north-1a"

  tags = {
    Name = "Main-${each.key}"
  }
}
resource "aws_subnet" "subnets_az2" {
  for_each          = { "public-subnet1_az2" : "192.168.0.32/27", "private-subnet1_az2" : "192.168.0.128/27", "private-subnet2_az2" : "192.168.0.160/27" }
  vpc_id            = aws_vpc.this.id
  cidr_block        = each.value
  availability_zone = "eu-north-1b"

  tags = {
    Name = "Main-${each.key}"
  }
}

# resource "aws_subnet" "this" {
#   count      = length(var.cidr_subnets)
#   vpc_id     = aws_vpc.this.id
#   cidr_block = element(var.cidr_subnets, count.index)
#   tags = {
#     Name = "subnets-${count.index}"
#   }
# }

# variable "cidr_subnets" {
#   type        = list(string)
#   description = "List of cidr range for subnets"
#   default = ["192.168.0.0/27", "192.168.0.32/27", "192.168.0.64/27",
#   "192.168.0.96/27", "192.168.0.128/27", "192.168.0.160/27"]
# }