terraform {
  backend "s3" {
    bucket         = "tfstate-for-locking-vikas" # Created & Versioning Enabled Manually.
    key            = "terraform.tfstate"   # path and name of state file.
    region         = "eu-north-1"
    dynamodb_table = "state_table-vikas" # name of dynamodb table for State Lock, must have partition key = "LockID"
    # encrypt = true # by default
    #profile        = "default"
  }
}
