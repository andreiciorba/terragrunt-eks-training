generate "backend" {
  path      = "s3-backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
    backend "s3" {
        bucket  = "statestorageekstf"
        key     = "${path_relative_to_include()}/terraform.tfstate"
        region  = "eu-west-3"
        encrypt = true
    }
}
EOF
}