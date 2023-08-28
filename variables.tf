variable "environment" {
  description = "Deployment environment"
  type        = string
}

locals {
  cluster_name = "e2ecicd-eks-${var.environment}"

  # Instance type for each environment
  instance_type = {
    dev     = "t2.micro"
    staging = "t2.small"
    prod    = "t2.medium"
  }

  # Number of desired instances for each environment
  desired_instance_count = {
    dev     = 1
    staging = 2
    prod    = 3
  }
}
