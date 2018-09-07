# terraform-cloud GCP

## Setup A Google Cloud Project

The first thing we need to do is to create a new project at [Google Project Console][https://console.cloud.google.com/project], for example:

Project Name | Project ID
------------ | ----------
ProjectXXXX | XXXXX-20160301

### Get Authentication JSON File

Authenticating with Google Cloud services requires a JSON file which is called the _account file_ in Terraform.

This file is downloaded directly from the [Google Developers Console][https://console.cloud.google.com/project]:

1. Click the menu button in the top left corner, and navigate to "Permissions", then "Service accounts", and finally "Create service account".

1. Provide **XXXX-20160301** as the name and ID in the corresponding fields, select "Furnish a new private key", and select "JSON" as the key type.

1. Clicking "Create" will download your credentials.

1. Rename the downloaded json file to **account.json**

### Enable Google Cloud APIs for ProjectXXXX

To use and control google cloud with command line tools, we need to enable Google Cloud APIs.

Go to [Google Cloud API Manager][https://console.cloud.google.com/apis] and enable Google Cloud APIs for ProjectXXXX:

* Compute Engine API
* Cloud Storage Service
* Cloud Deployment Manager API
* Cloud DNS API
* Cloud Monitoring API
* Cloud Storage JSON API
* Compute Engine Instance Group Manager API
* Compute Engine Instance Groups API
* Prediction API
### Launch Creation
`terraform init`
`terraform plan`
`terraform apply -auto-approve`

### Destroy environnement
`terraform destroy -auto-approve`

