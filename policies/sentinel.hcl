// policy "restrict-aws-instances-type-and-tag" {
//   source = "./restrict-aws-instances-type-and-tag.sentinel"
//   enforcement_level = "advisory"
// }

module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

// policy "limit-cost-by-workspace-name" {
//  source = "./limit-cost-by-workspace-name.sentinel"
//  enforcement_level = "advisory"
//}

policy "restrict-aws-ec2-instance-type" {
  source = "./restrict-aws-ec2-instances-type.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-aws-ec2-instance-by-tag" {
  source = "./restrict-aws-ec2-instance-by-tag.sentinel"
  enforcement_level = "advisory"
}
// policy "ecs-naming-check" {
//   source = "./ecs-naming-check.sentinel"
//   enforcement_level = "advisory"
// }

// policy "ecs-no-public-ip" {
//   source = "./ecs-no-public-ip.sentinel"
//   enforcement_level = "advisory"
// }
