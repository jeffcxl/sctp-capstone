#IAM Role and Policy for Lambda#
resource "aws_iam_role" "lambda_role" {
  name = "lambda_execution_role"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "lambda_policy" {
  name = "lambda_s3_access_policy"
  
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = ["s3:GetObject", "s3:PutObject"],
        Resource = "arn:aws:s3:::${aws_s3_bucket.example.bucket}/*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "lambda_policy_attachment" {
  policy_arn = aws_iam_policy.lambda_policy.arn
  role     = aws_iam_role.lambda_role.name
}

#lambda Function#
resource "aws_lambda_function" "example" {
  filename         = "lambda_function.zip"
  function_name    = "example_lambda_function"
  role             = aws_iam_role.lambda_role.arn
  handler          = "index.handler"
  runtime          = "python3.8"
  vpc_config {
    subnet_ids          = var.private_subnet_ids
    security_group_ids   = []  # You can add security group IDs here if needed
  }
  environment {
    variables = {
      BUCKET_NAME = aws_s3_bucket.example.bucket
    }
  }

  source_code_hash = filebase64sha256("lambda_function.zip")
}

output "lambda_function_name" {
  value = aws_lambda_function.example.function_name
}
