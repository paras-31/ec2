module "ec2" {
  source = "../ec2"
  for_each = var.tags
  ami = each.value["ami"]
  instatype = each.value["instance_type"]
  name = each.value["name"]
  owner = each.value["owner"]
  purpose = each.value["purpose"]

}

module "s3" {
  source = "../s3"
  bucket = "parasbucnew"
  name = var.tags["A"]["name"]
  owner = var.tags["A"]["owner"]
  purpose = var.tags["A"]["purpose"]
}