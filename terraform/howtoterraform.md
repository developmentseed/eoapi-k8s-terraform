1. cd terraform/aws
2. install `tfenv` to manage multiple versions: [https://github.com/tfutils/tfenv](https://github.com/tfutils/tfenv)
3. our `init.tf` file has a `required_version = "1.6.0"` so install that:

```bash
$ tfenv list
  1.1.5
  1.1.4
```

4. tfenv install 1.6.0
5. tfenv use 1.3.9
3. manually create your TF state bucket name listed in `terraform/aws/main.tf` or choose a new one and change `terraform/aws/main.tf`
4. cp vars/default vars/(your-profile-name)
5. AWS_PROFILE=(profile-name) terraform init
6. AWS_PROFILE=(profile-name) terraform workspace create (name)
7. AWS_PROFILE=(profile-name) terraform plan --var-file=vars/(your-profile-name)
8. AWS_PRFILE=(profile-name) terraform apply --var-file=vars/(your-profile-name)
