1. cd terraform/aws
2. manually create your TF state bucket name listed in `terraform/aws/main.tf` or choose a new one and change `terraform/aws/main.tf`
3. cp vars/default vars/(your-profile-name)
4. AWS_PROFILE=(profile-name) terraform init
5. AWS_PROFILE=(profile-name) terraform workspace create (name)
6. AWS_PROFILE=(profile-name) terraform plan --var-file=vars/(your-profile-name)
7. AWS_PRFILE=(profile-name) terraform apply --var-file=vars/(your-profile-name)
