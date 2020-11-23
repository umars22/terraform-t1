resource "aws_iam_group" "developers-team" {
  name = "developers"
  path = "/"
}

resource "aws_iam_group_membership" "developers_team" {
  name = "developers-group-membership"

  users = [
    "${aws_iam_user.tim.name}",
    "${aws_iam_user.ben.name}",
    "${aws_iam_user.bob.name}",
  ]

  group = "${aws_iam_group.developers-team.name}"
}

#----------------------------------------------------

resource "aws_iam_group" "managements-team" {
  name = "management"
  path = "/"
}

resource "aws_iam_group_membership" "managements-team" {
  name = "managements-team"

  users = ["${aws_iam_user.ben.name}"]

  group = "${aws_iam_group.managements-team.name}"
}
