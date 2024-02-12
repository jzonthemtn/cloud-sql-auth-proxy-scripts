#!/bin/bash -e

# This script enables IAM authentication for Cloud SQL and creates the IAM users.
#!/bin/bash -e

PROJECT=${1:-"YOUR-GCP-PROJECT-NAME"}
INSTANCE_ID="${PROJECT}-mysql"
INSTANCE="${PROJECT}:us-east4:${INSTANCE_ID}"

# Enable IAM authentication.
gcloud sql instances patch ${INSTANCE_ID} --database-flags=cloudsql_iam_authentication=on --project ${PROJECT}
echo "IAM authentication enabled."

# Create the IAM users.
gcloud sql users create USER-EMAIL-HERE --instance=${INSTANCE_ID} --type=cloud_iam_user --project ${PROJECT}
echo "IAM users created -- be sure to grant permissions to the users in the database."

# Create the non-IAM users.
# gcloud sql users create USER-NAME-HERE --instance=${INSTANCE_ID} --host % --type built_in --password PASSWORD-HERE --project ${PROJECT}
