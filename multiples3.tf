variable "s3_bucket_name" {
   type = "list"
   default = ["virtusa-s3-1", "virtusa-s3-2", "virtusa-s3-3"]
}
resource "aws_s3_bucket" "henrys_bucket" {
   count = "${length(var.s3_bucket_name)}"
   bucket = "${var.s3_bucket_name[count.index]}"
   acl = "private"
   versioning {
      enabled = true
   }
   force_destroy = "true"
}
