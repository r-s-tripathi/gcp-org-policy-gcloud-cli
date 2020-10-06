#!/bin/bash

export zone=us-east1-b
export project=alert-vista-291320
#export allow=All
export allow=None
#export set=enable-enforce
export set=disable-enforce 

#Allow extending lifetime of OAuth 2.0 access tokens to up to 12 hours
gcloud alpha resource-manager org-policies allow --zone $zone --project $project --quiet constraints/iam.allowServiceAccountCredentialLifetimeExtension $allow

#Allowed external Identity Providers for workloads in Cloud IAM
gcloud alpha resource-manager org-policies allow --zone $zone --project $project --quiet constraints/iam.workloadIdentityPoolProviders $allow

#Allowed ingress settings (Cloud Functions)
gcloud alpha resource-manager org-policies allow --zone $zone --project $project --quiet constraints/cloudfunctions.allowedIngressSettings $allow

#Allowed VPC Connector egress settings (Cloud Functions)
gcloud alpha resource-manager org-policies allow --zone $zone --project $project --quiet constraints/cloudfunctions.allowedVpcConnectorEgressSettings $allow

#Compute Storage resource use restrictions (Compute Engine disks, images, and snapshots)
gcloud alpha resource-manager org-policies allow --zone $zone --project $project --quiet constraints/compute.storageResourceUseRestrictions $allow

#Define allowed external IPs for VM instances
gcloud alpha resource-manager org-policies allow --zone $zone --project $project --quiet  constraints/iam.workloadIdentityPoolProviders $allow

#Define trusted image projects
gcloud alpha resource-manager org-policies allow --zone $zone --project $project --quiet constraints/compute.trustedImageProjects $allow

#Disable Automatic IAM Grants for Default Service Accounts
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/iam.automaticIamGrantsForDefaultServiceAccounts

#Disable Cloud Logging
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/gcp.disableCloudLogging

#Disable Guest Attributes of Compute Engine metadata
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.disableGuestAttributesAccess

#Disable Internet Network Endpoint Groups
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.disableInternetNetworkEndpointGroup

#Disable service account creation
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/iam.disableServiceAccountCreation

#Disable service account key creation
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/iam.disableServiceAccountKeyCreation

#Disable Service Account Key Upload
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/iam.disableServiceAccountKeyUpload

#Disable Source Code Download
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/appengine.disableCodeDownload

#Disable VM nested virtualization
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.disableNestedVirtualization

#Disable VM serial port access
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.disableSerialPortAccess

#Disable VM serial port logging to Stackdriver
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.disableSerialPortLogging

#Disable Workload Identity Cluster Creation
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/iam.disableWorkloadIdentityClusterCreation

#Domain restricted sharing
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/iam.allowedPolicyMemberDomains

#Enforce uniform bucket-level access
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/storage.uniformBucketLevelAccess

#Google Cloud Platform - Detailed Audit Logging Mode
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/gcp.detailedAuditLoggingMode

#Google Cloud Platform - Resource Location Restriction
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/gcp.resourceLocations

#Require OS Login
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.requireOsLogin

#Require VPC Connector (Cloud Functions)
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/cloudfunctions.requireVPCConnector

#Restrict allowed Google Cloud APIs and services
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/serviceuser.services

#Restrict Authenticated Google Connection
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictAuthenticatedGoogleConnection

#Restrict Authorized Networks on Cloud SQL instances
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/sql.restrictAuthorizedNetworks

#Restrict Cloud NAT usage
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictCloudNATUsage

#Restrict Dedicated Cloud Interconnect usage
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictDedicatedInterconnectUsage

#Restrict default Google-managed encryption on Cloud SQL instances
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/sql.disableDefaultEncryptionCreation

#Restrict Direct Google Access
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictDirectGoogleAccess

#Restrict Load Balancer Creation Based on Load Balancer Types
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictLoadBalancerCreationForTypes

#Restrict Partner Cloud Interconnect usage
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictPartnerInterconnectUsage

#Restrict Protocol Forwarding Based on type of IP Address
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictProtocolForwardingCreationForTypes

#Restrict Public IP access on Cloud SQL instances
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/sql.restrictPublicIp

#Restrict Shared VPC Host Projects
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictSharedVpcHostProjects

#Restrict shared VPC project lien removal
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictXpnProjectLienRemoval

#Restrict Shared VPC Subnetworks
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictSharedVpcSubnetworks

#Restrict VM IP Forwarding
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.vmCanIpForward

#Restrict VPC peering usage
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictVpcPeering

#Restrict VPN Peer IPs
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.restrictVpnPeerIPs

#Retention policy duration in seconds
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/storage.retentionPolicySeconds

#Shielded VMs
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.requireShieldedVm

#Skip default network creation
gcloud alpha resource-manager org-policies $set --zone $zone --project $project --quiet constraints/compute.skipDefaultNetworkCreation
