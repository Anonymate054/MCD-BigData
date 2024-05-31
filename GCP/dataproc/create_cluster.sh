#!/bin/bash

# Function to display help message
show_help() {
    echo "Usage: $0 -n <cluster-name> -r <region> -p <project-name>"
    exit 1
}

# Check if all required parameters are provided
if [ $# -ne 6 ]; then
    show_help
fi

# Variables to store provided parameters
cluster_name=""
region=""
project_name=""

# Process command line arguments
while getopts ":n:r:p:" opt; do
    case ${opt} in
        n )
            cluster_name="$OPTARG"
            ;;
        r )
            region="$OPTARG"
            ;;
        p )
            project_name="$OPTARG"
            ;;
        \? )
            show_help
            ;;
    esac
done
shift $((OPTIND -1))

# Check if values are provided for parameters
if [ -z "$cluster_name" ] || [ -z "$region" ] || [ -z "$project_name" ]; then
    show_help
fi

# Generate gcloud command
command="gcloud dataproc clusters create $cluster_name \
    --enable-component-gateway \
    --region $region \
    --subnet default \
    --master-machine-type e2-standard-4 \
    --master-boot-disk-size 100 \
    --num-workers 2 \
    --worker-machine-type n2-standard-2 \
    --worker-boot-disk-size 200 \
    --image-version 2.2-ubuntu22 \
    --optional-components JUPYTER,ZEPPELIN,DOCKER \
    --scopes "https://www.googleapis.com/auth/cloud-platform" \
    --project $project_name"

# command= "gcloud dataproc clusters create $cluster_name \
#     --enable-component-gateway \
#     --region $region \
#     --subnet default \
#     --master-machine-type e2-standard-4 \
#     --master-boot-disk-size 100 \
#     --num-workers 2 \
#     --worker-machine-type e2-standard-2 \
#     --worker-boot-disk-size 100 \
#     --image-version 2.2-ubuntu22 \
#     --optional-components JUPYTER,ZEPPELIN,DOCKER \
#     --scopes 'https://www.googleapis.com/auth/cloud-platform' \
#     --project $project_name"

echo "Running: $command"
$command 