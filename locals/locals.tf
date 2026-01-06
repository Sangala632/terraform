locals {
    file_name = "${var.project}-${var.environment}-${var.component}"
    ec2_tages= merge(
        var.common_tages,
        {
            environment = "dev"
            version = "1.1"
        }
    )
}