
# Installation Guide

## Google Cloud SDK Installation

To utilize Google Cloud SDK for your project, follow these steps to install and configure it on a Linux system. For other operating systems, refer to the [official installation guide](https://cloud.google.com/sdk/docs/install).

### Step-by-Step Installation

1. **Download Google Cloud SDK:**

   Run the following command to download the Linux archive file:

   ```bash
   curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-477.0.0-linux-x86_64.tar.gz
    ```

2. **Uncompress the Files:** 

    Unpack the downloaded archive using the following command:

   ``` bash
   tar -xvzf google-cloud-cli-477.0.0-linux-x86_64.tar.gz
    ```

3. **Install Google Cloud SDK:**

    Navigate to the extracted directory and run the installation script:

   ``` bash
   ./google-cloud-sdk/install.sh
    ```

    During installation, you will see the following text:

    ``` bash
    Welcome to the Google Cloud CLI!

    To help improve the quality of this product, we collect anonymized usage data
    and anonymized stacktraces when crashes are encountered; additional information
    is available at <https://cloud.google.com/sdk/usage-statistics>. This data is
    handled in accordance with our privacy policy
    <https://cloud.google.com/terms/cloud-privacy-notice>. You may choose to opt in this
    collection now (by choosing 'Y' at the below prompt), or at any time in the
    future by running the following command:

        gcloud config set disable_usage_reporting false

    Do you want to help improve the Google Cloud CLI (y/N)?  y


    Your current Google Cloud CLI version is: 477.0.0
    The latest available version is: 477.0.0
    ```
    Follow the prompts to complete the installation. You may choose to opt-in or out of data collection.

4. Initialize Google Cloud SDK:

    After installation, initialize the SDK:

   ``` bash
   ./google-cloud-sdk/bin/gcloud init
    ```

    This command will guide you through the initial setup, including logging in with your Google account and selecting a Google Cloud project.

    ``` bash 
    Welcome! This command will take you through the configuration of gcloud.

    Your current configuration has been set to: [default]

    You can skip diagnostics next time by using the following flag:
    gcloud init --skip-diagnostics

    Network diagnostic detects and fixes local network connection issues.
    Checking network connection...done.
    Reachability Check passed.
    Network diagnostic passed (1/1 checks passed).

    You must log in to continue. Would you like to log in (Y/n)?  y
    ```

    Follow the prompts to log in, select a cloud project, and configure a default compute region and zone if desired.

    ``` bash
    Pick cloud project to use:
    [1] bigdata-#####
    [2] Create a new project
    Please enter numeric choice or text value (must exactly match list item):  2

    Your current project has been set to: [bigdata-#####].

    Do you want to configure a default Compute Region and Zone? (Y/n)?  y

    ```
For more detailed information please visit the [Install the gcloud CLI ](https://cloud.google.com/sdk/docs/install)
## Post-Installation Configuration

After installation and initial configuration, you might want to install additional components or update your SDK:

``` bash
┌─────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                    Components                                                   │
├───────────────┬──────────────────────────────────────────────────────┬──────────────────────────────┬───────────┤
│     Status    │                         Name                         │              ID              │    Size   │
├───────────────┼──────────────────────────────────────────────────────┼──────────────────────────────┼───────────┤
│ Not Installed │ App Engine Go Extensions                             │ app-engine-go                │   4.7 MiB │
│ Not Installed │ Appctl                                               │ appctl                       │  21.0 MiB │
│ Not Installed │ Artifact Registry Go Module Package Helper           │ package-go-module            │   < 1 MiB │
│ Not Installed │ Cloud Bigtable Command Line Tool                     │ cbt                          │  17.7 MiB │
│ Not Installed │ Cloud Bigtable Emulator                              │ bigtable                     │   7.3 MiB │
│ Not Installed │ Cloud Datastore Emulator                             │ cloud-datastore-emulator     │  36.2 MiB │
│ Not Installed │ Cloud Firestore Emulator                             │ cloud-firestore-emulator     │  45.1 MiB │
│ Not Installed │ Cloud Pub/Sub Emulator                               │ pubsub-emulator              │  63.7 MiB │
│ Not Installed │ Cloud Run Proxy                                      │ cloud-run-proxy              │  13.3 MiB │
│ Not Installed │ Cloud SQL Proxy v2                                   │ cloud-sql-proxy              │  13.8 MiB │
│ Not Installed │ Cloud Spanner Emulator                               │ cloud-spanner-emulator       │  36.6 MiB │
│ Not Installed │ Cloud Spanner Migration Tool                         │ harbourbridge                │  20.9 MiB │
│ Not Installed │ Google Container Registry's Docker credential helper │ docker-credential-gcr        │   1.8 MiB │
│ Not Installed │ Kustomize                                            │ kustomize                    │   4.3 MiB │
│ Not Installed │ Log Streaming                                        │ log-streaming                │  13.9 MiB │
│ Not Installed │ Minikube                                             │ minikube                     │  35.4 MiB │
│ Not Installed │ Nomos CLI                                            │ nomos                        │  28.8 MiB │
│ Not Installed │ On-Demand Scanning API extraction helper             │ local-extract                │  14.4 MiB │
│ Not Installed │ Skaffold                                             │ skaffold                     │  24.1 MiB │
│ Not Installed │ Spanner migration tool                               │ spanner-migration-tool       │  23.6 MiB │
│ Not Installed │ Terraform Tools                                      │ terraform-tools              │  66.1 MiB │
│ Not Installed │ anthos-auth                                          │ anthos-auth                  │  22.0 MiB │
│ Not Installed │ config-connector                                     │ config-connector             │  56.7 MiB │
│ Not Installed │ enterprise-certificate-proxy                         │ enterprise-certificate-proxy │   8.6 MiB │
│ Not Installed │ gcloud Alpha Commands                                │ alpha                        │   < 1 MiB │
│ Not Installed │ gcloud Beta Commands                                 │ beta                         │   < 1 MiB │
│ Not Installed │ gcloud app Java Extensions                           │ app-engine-java              │ 126.9 MiB │
│ Not Installed │ gcloud app Python Extensions                         │ app-engine-python            │   5.0 MiB │
│ Not Installed │ gcloud app Python Extensions (Extra Libraries)       │ app-engine-python-extras     │   < 1 MiB │
│ Not Installed │ gke-gcloud-auth-plugin                               │ gke-gcloud-auth-plugin       │   7.9 MiB │
│ Not Installed │ istioctl                                             │ istioctl                     │  24.0 MiB │
│ Not Installed │ kpt                                                  │ kpt                          │  14.6 MiB │
│ Not Installed │ kubectl                                              │ kubectl                      │   < 1 MiB │
│ Not Installed │ kubectl-oidc                                         │ kubectl-oidc                 │  22.0 MiB │
│ Not Installed │ pkg                                                  │ pkg                          │           │
│ Installed     │ BigQuery Command Line Tool                           │ bq                           │   1.7 MiB │
│ Installed     │ Bundled Python 3.11                                  │ bundled-python3-unix         │  75.1 MiB │
│ Installed     │ Cloud Storage Command Line Tool                      │ gsutil                       │  11.3 MiB │
│ Installed     │ Google Cloud CLI Core Libraries                      │ core                         │  18.6 MiB │
│ Installed     │ Google Cloud CRC32C Hash Tool                        │ gcloud-crc32c                │   1.2 MiB │
└───────────────┴──────────────────────────────────────────────────────┴──────────────────────────────┴───────────┘

```

1. **Install/Remove Components:**

    ``` bash
    gcloud components install COMPONENT_ID
    gcloud components remove COMPONENT_ID
    ```

2. **Update SDK to the Latest Version:**

    ``` bash
    gcloud components update
    ```

Modify Profile to Update PATH and Enable Shell Command Completion:
Follow the prompts to modify your shell profile (e.g., `.bashrc`, `.zshrc`).

For more detailed information and advanced configuration options, please visit the [Google Cloud SDK Quickstarts](https://cloud.google.com/storage/docs/gsutil/commands/config).


# Create a new project

1. **Create a New Project**: Execute the following command to create a new project:

   ```bash
   gcloud projects create <project-id>
   ```
   *Example:* `gcloud projects create bigdata-qqp2`

2. **List Projects:** To list all projects, use:
   ```bash
   gcloud projects list
   ```

3. **Check Current Project:** To see which project you're currently working on, use:
   ```bash
   gcloud config list project
   ```

4. **Change Project:** To switch to a different project, use:
   ```bash
   gcloud config set project <project-id>
   ```
   *Example:*`gcloud config set project bigdata-qqp2`

## Resolving Billing Account Issue

To resolve the billing account issue, follow these steps:

1. **Verify Billing Account**: Ensure that your project has a billing account associated with it. You can do this by using the following command:

   ```bash
   gcloud beta billing accounts list
   ```
   This will display a list of available billing accounts and their IDs. If you don't have a billing account associated, you'll need to create one in the Google Cloud Billing console.

2. **Associate Billing Account with Project:**: If you have a billing account available, you can associate it with your project using the following command:

    ```bash
    gcloud beta billing projects link <project-id> --billing-account=<billing-account-id>
    ```
    Replace `<project-id>` with your project's ID and `<billing-account-id>` with the ID of the billing account you wish to associate.

Once you have associated a billing account with the project, try enabling the Dataproc service again using the following command:

```bash
gcloud services enable dataproc.googleapis.com --project=<project-id>
```

If the billing account is properly configured, the Dataproc service should be able to activate without any issues.

# Create a new instance of Dataproc

## Manual instalation

You can create a new instance of Dataproc using the following command:

    gcloud dataproc clusters create <cluster-name> --enable-component-gateway --region <region> --subnet default --master-machine-type e2-standard-4 --master-boot-disk-size 100 --num-workers 2 --worker-machine-type n2-standard-2 --worker-boot-disk-size 200 --image-version 2.2-ubuntu22 --optional-components JUPYTER,ZEPPELIN,DOCKER --scopes 'https://www.googleapis.com/auth/cloud-platform' --project <project-name>
    

Make sure to replace `<cluster-name>`, `<region>`, `<project-name>` with your actual information.

## Semi-automatic installation

Alternatively, you can execute the `create_cluster.sh` script by providing three parameters: `cluster name`, `region`, and `project name`.

1. **Grant permission to the script:**

    ``` bash
    chmod +x ./create_cluster.sh
    ```

2. **Create cluster:**

    ``` bash
    ./create_cluster.sh -n my-cluster -r us-east1 -p my-project
    ```
    *Example:* `./create_cluster.sh -n cluster-qqp -r us-east1 -p bigdata-qqp2`

## Gran permissions to GCP IAM

If you encounter an error while creating the cluster regarding permissions, follow these steps.

1. **Grant permission to the script:**

    ``` bash
    chmod +x grant_gcp_permissions.sh
    ```

2. **Run script:**

    ``` bash
    ./grant_permissions.sh <project-id>
    ```
    *Example:* `./grant_permissions.sh bigdata-qqp2`

Make sure to replace `<project-id>` with your actual project ID. This script retrieves the service account, grants the necessary permissions, and then displays the updated IAM policy of the project.
