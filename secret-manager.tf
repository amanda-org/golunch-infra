resource "aws_secretsmanager_secret" "golunch_ecr_1" {
  name        = "golunch/ecr-uri"
  description = "URI do repositório ECR usado pela aplicação GoLunch"
}

resource "aws_secretsmanager_secret_version" "golunch_ecr_uri" {
  secret_id     = aws_secretsmanager_secret.golunch_ecr_1.id
  secret_string = aws_ecr_repository.golunch.repository_url
}

resource "aws_secretsmanager_secret" "golunch_s3_images_1" {
  name        = "golunch/s3-uri"
  description = "URL pública do bucket S3 para armazenar imagens"
}

resource "aws_secretsmanager_secret_version" "golunch_s3_uri" {
  secret_id     = aws_secretsmanager_secret.golunch_s3_images_1.id
  secret_string = aws_s3_bucket.images.bucket_regional_domain_name
}
