resource "aws_s3_bucket" "data_stores" {
  for_each = toset(var.bucket_names)
  bucket = each.key
}

resource "aws_iam_policy" "eks_s3_access" {
  name   = "EKSS3AccessPolicy"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*"
        ]
        Effect   = "Allow"
        Resource = concat(
          [for bucketname in var.bucket_names : "arn:aws:s3:::${bucketname}"],
          [for bucketname in var.bucket_names : "arn:aws:s3:::${bucketname}/*"]
        )
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "s3_access" {
  role       = aws_iam_role.nodegroup.name
  policy_arn = aws_iam_policy.eks_s3_access.arn
}