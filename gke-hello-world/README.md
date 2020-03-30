# GKE Terraform Hello-World set up 


## Steps :

- Create a Google Service Account from the IAM section or from API & Services > Credentials and create account with project editor rights.
- `terraform init`
- Terraform file (or module) custom cluster configuration
- Custom variable initiation using tfvars (authentication OR usage of service credential file
- `terraform apply`
- kubectl config file setting via `gcloud container clusters get-credentials`
- kubectl / kubernetes-python-client usage 
- `terraform destroy`


(source : https://cloud.google.com/community/tutorials/couchbase-on-google-kubernetes-engine-using-terraform)