resource "aws_glue_job" "glue_job" {
  name          = "glue-job"
  role_arn      = "arn:aws:iam::874010166182:role/AWS_GLUE_EXECUTION_ROLE"
  command {
    name     = "glueetl"
    script_location = "s3://your-bucket-name/glue-scripts/glue_python.py"  # Change to your script location
  }
}