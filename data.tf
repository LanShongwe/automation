data "aws_availability_zones" "this" {
  all_availability_zones = true

  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

// ["ap-south-1a", "ap-south-lb", "ap-south-lc"]