# Terraform S3 Backend Configuration
#
# INSTRUCTIONS:
# 1. First run: terraform init (WITHOUT this backend configured)
# 2. Create the S3 bucket and DynamoDB table for state storage:
#    aws s3 mb s3://<your-state-bucket-name>
#    aws dynamodb create-table --table-name terraform-locks --attribute-definitions AttributeName=LockID,AttributeType=S --key-schema AttributeName=LockID,KeyType=HASH --billing-mode PAY_PER_REQUEST
# 3. Uncomment the backend block below and update the bucket name
# 4. Run: terraform init -migrate-state
#
# The backend bucket and DynamoDB table must be created OUTSIDE of this Terraform configuration
# to avoid the chicken-and-egg problem of managing state with state.

# backend "s3" {
#   bucket         = "<your-terraform-state-bucket>"
#   key            = "${var.project_name}/${var.environment}/terraform.tfstate"
#   region         = var.region
#   encrypt        = true
#   dynamodb_table = "terraform-locks"
# }