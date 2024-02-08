#!/bin/sh
export PROJECT="apigee-412820"
export APIGEE_HOST="apigee-412820-eval.apigee.net"
export APIGEE_ORG="apigee-412820"
export APIGEE_ENV="eval"
PROJECT_NUMBER="$(gcloud projects describe $PROJECT --format="value(projectNumber)")"
export PROJECT_NUMBER
export CLOUD_BUILD_SA="$PROJECT_NUMBER@cloudbuild.gserviceaccount.com"

gcloud config set project $PROJECT
