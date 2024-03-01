1. cd terraform/aws
2. cp vars/default vars/(your-profile-name)
3. AWS_PROFILE=(profile-name) terraform init
4. AWS_PROFILE=(profile-name) terraform workspace create (name)
5. AWS_PROFILE=(profile-name) terraform plan --var-file=vars/(your-profile-name)
6. AWS_PRFILE=(profile-name) terraform apply --var-file=vars/(your-profile-name)
