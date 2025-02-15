1. create a storage account and upload the scrip file

2. az login  # Authenticate to Azure

# Replace with your subscription ID
az account set --subscription="302b8a0c-c3f6-4169-9233-45adda46f384"

# Create a service principal with Contributor role
az ad sp create-for-rbac \
  --name "terraform-cloud-sp" \
  --role Contributor \
  --scopes /subscriptions/SUBSCRIPTION_ID \
  --sdk-auth