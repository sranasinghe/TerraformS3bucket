resource "aws_s3_bucket" "AEM_eks_Bucket" {
    bucket = "eksbuckettf"
    acl = "private"

    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm     = "AES256"
            }
        }
    }
}