output "vpc-id" {
  description = "ID of the project VPC"
  value = module.vpc.vpc_id
}

#the 'terraform output' command will show all saved outputs
#for automation, use -json on the CLI to change return to json