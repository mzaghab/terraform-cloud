# terraform-cloud GCP


## Setup

You need to create a service account to allow terraform to deploy resources : 
https://cloud.google.com/iam/docs/service-accounts

```
gcloud iam service-accounts create ACCOUNT_NAME --display-name "Some Account Name"
gcloud iam service-accounts keys create "terraform.key.json" --iam-account "ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com"
gcloud projects add-iam-policy-binding PROJECT_ID --member 'serviceAccount:ACCOUNT_NAME@PROJECT_ID.iam.gserviceaccount.com' --role 'roles/owner'
```
You must get the file `account.json` before running which would contain your service Account Key file.

This contains your authentication required for Terraform to talk to the Google API.

You can get it under 

`Google Cloud Platform -> API Manager -> Credentials -> Create Credentials -> Service account key.`

For the Key type field chose JSON. Put the downloaded file right were your Terraform config file is and name it `account.json`.

If you are using the gcs as the backend, you will need to give it the `Storage Admin` role for the `storage.buckets.create` permission.
