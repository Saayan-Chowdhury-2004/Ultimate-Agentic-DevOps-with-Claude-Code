output "cloudfront_distribution_id" {
  description = "CloudFront Distribution ID"
  value       = aws_cloudfront_distribution.site.id
}

output "cloudfront_domain_name" {
  description = "CloudFront Distribution Domain Name"
  value       = aws_cloudfront_distribution.site.domain_name
}

output "s3_bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.site.id
}

output "s3_bucket_arn" {
  description = "S3 Bucket ARN"
  value       = aws_s3_bucket.site.arn
}

output "cloudfront_url" {
  description = "Full CloudFront URL for the site"
  value       = "https://${aws_cloudfront_distribution.site.domain_name}"
}