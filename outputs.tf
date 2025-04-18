output "public_sg_rules_ingress" {
    description = "The public security group rules for ingress"
    value=local.public_sg_rules_ingress
}