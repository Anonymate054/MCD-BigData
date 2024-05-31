#!/bin/bash

# Check if project ID is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <project-id>"
    exit 1
fi

project_id=$1

echo "Searching for the project: $project_id"

# Get the service account
result=$(gcloud projects get-iam-policy "$project_id" --flatten="bindings[].members" --format='table(bindings.members)' --filter="bindings.role:roles/owner OR bindings.role:roles/editor" | grep 'cloudservices.gserviceaccount.com')
service_account=$(echo $result | cut -d':' -f2 | cut -d'@' -f1)
# service_account=$(gcloud projects get-iam-policy "$project_id" --flatten="bindings[].members" --format='table(bindings.members)' --filter="bindings.role:roles/owner OR bindings.role:roles/editor" | grep 'serviceAccount:' | awk -F: '{print $2}' | awk -F@ '{print $1}')

echo "Service account: $service_account"

# Grant permissions
gcloud projects add-iam-policy-binding "$project_id" --member serviceAccount:"$service_account"-compute@developer.gserviceaccount.com --role roles/dataproc.worker

# gsutil iam ch serviceAccount:"$service_account"-compute@developer.gserviceaccount.com:objectAdmin gs://dataproc-staging-us-east1-1"$service_account"-1ikntuex

# gsutil iam ch serviceAccount:"$service_account"-compute@developer.gserviceaccount.com:objectAdmin gs://dataproc-temp-us-east1-"$service_account"-a8xynqaq

# Get the updated IAM policy
gcloud projects get-iam-policy "$project_id" --flatten="bindings[].members" --format='table(bindings.role)' --filter="bindings.role:roles/owner OR bindings.role:roles/editor"
