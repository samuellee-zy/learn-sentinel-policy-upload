// policy "restrict-aws-instances-type-and-tag" {
//   source = "./restrict-aws-instances-type-and-tag.sentinel"
//   enforcement_level = "advisory"
// }

policy "limit-cost-by-workspace-name" {
  source = "./limit-cost-by-workspace-name.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-naming-check" {
  source = "./ecs-naming-check.sentinel"
  enforcement_level = "advisory"
}

policy "ecs-no-public-ip" {
  source = "./ecs-no-public-ip.sentinel"
  enforcement_level = "advisory"
}