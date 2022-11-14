variable "aws_profile" {
  type        = string
  description = "AWS Profile to use"
}

variable "smb_host" {
  type        = string
  description = "AWS Profile to use"
  default     = "10.0.0.1"
}

variable "smb_directory" {
  type        = map(string)
  description = "(optional) describe your variable"
  default = {
    Folder-1 = "/SMBShare/Folder-1"
    Folder-2 = "/SMBShare/Folder-2"
  }
}

variable "smb_user" {
  type        = string
  description = "AWS Profile to use"
  default     = "administrator"
}

variable "smb_password" {
  type        = string
  description = "AWS Profile to use"
  default     = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
  sensitive   = true
}

variable "agent_arn" {
  type        = string
  description = "AWS Profile to use"
  default     = "arn:aws:datasync:us-east-1:111122223333:agent/agent-12345ghijkl67"
}


variable "destination_s3_arn" {
  type        = string
  description = "AWS Profile to use"
  default     = "arn:aws:s3:::DOC-EXAMPLE-BUCKET"
} 

variable "destination_s3_toplevel_directory" {
  type        = string
  description = "AWS Profile to use"
  default     = "/replicate/"
} 

variable "role_arn_S3destination_permission" {
  type        = string
  description = "AWS Profile to use"
  default     = "arn:aws:iam::111122223333:role/service-role/s3-bucket-sync- permission"
} 