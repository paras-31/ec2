module "ec2" {
  source = "../ec2"
  for_each = var.tags
  ami = each.value["ami"]
  instatype = each.value["instance_type"]
  Name = each.value["name"]
  owner = each.value["owner"]
  purpose = each.value["purpose"]

}