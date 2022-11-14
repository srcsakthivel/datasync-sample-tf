
##################################################################################
# RESOURCES
##################################################################################

### SOURCES

resource "aws_datasync_location_smb" "example_smb" {
  for_each        = var.smb_directory
  server_hostname = var.smb_host
  subdirectory    = each.value

  user     = var.smb_user
  password = var.smb_password

  agent_arns = [var.agent_arn]
}

### DESTINATIONS
resource "aws_datasync_location_s3" "example_s3" {
  for_each      = var.smb_directory
  s3_bucket_arn = var.destination_s3_arn
  subdirectory  = join("", [var.destination_s3_toplevel_directory, each.key])

  s3_config {
    bucket_access_role_arn = var.role_arn_S3destination_permission
  }
}
