resource "aws_datasync_task" "example_task" {
  for_each                 = var.smb_directory
  destination_location_arn = aws_datasync_location_s3.example_s3[each.key].arn
  name                     = "v1"
  source_location_arn      = aws_datasync_location_smb.example_smb[each.key].arn
  cloudwatch_log_group_arn = "arn:aws:logs:us-east-1:749887843911:log-group:/aws/datasync:*"

  options {
    bytes_per_second  = 100000000
    log_level         = "BASIC"
    uid               = "NONE"
    gid               = "NONE"
    posix_permissions = "NONE"

  }
}
