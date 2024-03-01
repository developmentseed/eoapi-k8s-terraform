0. cd terraform/aws
0. install `tfenv` to manage multiple versions: [https://github.com/tfutils/tfenv](https://github.com/tfutils/tfenv)
0. our `init.tf` file has a `required_version = "1.6.0"` so install that:

```bash
$ tfenv list
  1.1.5
  1.1.4
```

0. tfenv install 1.6.0
0. tfenv use 1.3.9
0. manually create your TF state bucket name listed in `terraform/aws/main.tf` or choose a new one and change `terraform/aws/main.tf`
0. cp vars/default vars/(your-profile-name)
0. AWS_PROFILE=(profile-name) terraform init
0. AWS_PROFILE=(profile-name) terraform workspace create (name)
0. AWS_PROFILE=(profile-name) terraform plan --var-file=vars/(your-profile-name)
0. AWS_PRFILE=(profile-name) terraform apply --var-file=vars/(your-profile-name)
