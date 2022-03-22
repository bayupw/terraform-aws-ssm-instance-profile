# Create random string
resource "random_string" "this" {
  length  = 3
  special = false
  upper   = false
}

resource "aws_iam_role" "this" {
  name               = var.random_suffix == true ? "${var.ssm_instance_role_name}-${random_string.this.id}" : var.ssm_instance_role_name
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": {
    "Effect": "Allow",
    "Principal": {"Service": "ec2.amazonaws.com"},
    "Action": "sts:AssumeRole"
  }
}
EOF
}

resource "aws_iam_instance_profile" "this" {
  name = var.random_suffix == true ? "${var.ssm_instance_profile_name}-${random_string.this.id}" : var.ssm_instance_profile_name
  role = aws_iam_role.this.name
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = aws_iam_role.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}