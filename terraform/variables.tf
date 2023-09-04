variable "environment" {
  description = "Deployment environment"
  type        = string
}

locals {
  cluster_name = "e2ecicd-eks-${var.environment}"

  # Instance type for each environment
  instance_type = {
    dev     = "t3.small"
    staging = "t3.medium"
    prod    = "t3.large"
  }

  # Number of desired instances for each environment
  desired_instance_count = {
    dev     = 1
    staging = 2
    prod    = 3
  }
}
