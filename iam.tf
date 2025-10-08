resource "aws_iam_user" "my_user" {
  name = "terraform-user"
}

resource "aws_iam_access_key" "my_user_key" {
  user = aws_iam_user.my_user.name
}
