provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.aws_region
  assume_role {
    role_arn    = var.aws_role_arn
  }
}

provider "random" {}

resource "random_pet" "table_name" {}

# resource "aws_dynamodb_table" "tfc_example_table" {
#   name = "${var.db_table_name}-${random_pet.table_name.id}"

#   read_capacity  = var.db_read_capacity
#   write_capacity = var.db_write_capacity
#   hash_key       = "UUID"

#   attribute {
#     name = "UUID"
#     type = "S"
#   }
# }
