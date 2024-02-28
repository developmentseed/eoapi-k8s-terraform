region = "us-west-2"

# name gets suffixed with `-${cluster_version}`
cluster_name = "eoapi"

# bucket names get suffixed with `-${cluster_name}-${cluster_version}`
buckets = ["data-inputs"]

prometheus_hostname = ""

instance_type = "t3.xlarge"
