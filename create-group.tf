resource "aws_iam_group" "developers-group" {
  name = "developers"
  path = "/users/"
}

resource "aws_iam_group" "management-group" {
  name = "management"
  path = "/users/"
}
