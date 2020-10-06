#!/bin/bash

export zone=us-east1-b
export project=alert-vista-291320
#export allow=All
export allow=None
#export set=enable-enforce
export set=disable-enforce 

#Allow extending lifetime of OAuth 2.0 access tokens to up to 12 hours
gcloud resource-manager org-policies allow --zone $zone --project $project constraints/iam.allowServiceAccountCredentialLifetimeExtension $allow

#Allowed external Identity Providers for workloads in Cloud IAM
gcloud resource-manager org-policies allow --zone $zone --project $project constraints/iam.workloadIdentityPoolProviders $allow

#Allowed ingress settings (Cloud Functions)
gcloud resource-manager org-policies allow --zone $zone --project $project constraints/cloudfunctions.allowedIngressSettings $allow

#Allowed VPC Connector egress settings (Cloud Functions)
gcloud resource-manager org-policies allow --zone $zone --project $project constraints/cloudfunctions.allowedVpcConnectorEgressSettings $allow

#Compute Storage resource use restrictions (Compute Engine disks, images, and snapshots)
gcloud resource-manager org-policies allow --zone $zone --project $project constraints/compute.storageResourceUseRestrictions $allow

#Define allowed external IPs for VM instances
gcloud resource-manager org-policies allow --zone $zone --project $project  constraints/iam.workloadIdentityPoolProviders $allow

#Define trusted image projects
gcloud resource-manager org-policies allow --zone $zone --project $project constraints/compute.trustedImageProjects $allow

#Disable Automatic IAM Grants for Default Service Accounts
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/iam.automaticIamGrantsForDefaultServiceAccounts

#Disable Cloud Logging
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/gcp.disableCloudLogging

#Disable Guest Attributes of Compute Engine metadata
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.disableGuestAttributesAccess

#Disable Internet Network Endpoint Groups
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.disableInternetNetworkEndpointGroup

#Disable service account creation
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/iam.disableServiceAccountCreation

#Disable service account key creation
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/iam.disableServiceAccountKeyCreation

#Disable Service Account Key Upload
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/iam.disableServiceAccountKeyUpload

#Disable Source Code Download
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/appengine.disableCodeDownload

#Disable VM nested virtualization
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.disableNestedVirtualization

#Disable VM serial port access
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.disableSerialPortAccess

#Disable VM serial port logging to Stackdriver
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.disableSerialPortLogging

#Disable Workload Identity Cluster Creation
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/iam.disableWorkloadIdentityClusterCreation

#Domain restricted sharing
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/iam.allowedPolicyMemberDomains

#Enforce uniform bucket-level access
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/storage.uniformBucketLevelAccess

#Google Cloud Platform - Detailed Audit Logging Mode
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/gcp.detailedAuditLoggingMode

#Google Cloud Platform - Resource Location Restriction
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/gcp.resourceLocations

#Require OS Login
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.requireOsLogin

#Require VPC Connector (Cloud Functions)
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/cloudfunctions.requireVPCConnector

#Restrict allowed Google Cloud APIs and services
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/serviceuser.services

#Restrict Authenticated Google Connection
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictAuthenticatedGoogleConnection

#Restrict Authorized Networks on Cloud SQL instances
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/sql.restrictAuthorizedNetworks

#Restrict Cloud NAT usage
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictCloudNATUsage

#Restrict Dedicated Cloud Interconnect usage
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictDedicatedInterconnectUsage

#Restrict default Google-managed encryption on Cloud SQL instances
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/sql.disableDefaultEncryptionCreation

#Restrict Direct Google Access
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictDirectGoogleAccess

#Restrict Load Balancer Creation Based on Load Balancer Types
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictLoadBalancerCreationForTypes

#Restrict Partner Cloud Interconnect usage
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictPartnerInterconnectUsage

#Restrict Protocol Forwarding Based on type of IP Address
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictProtocolForwardingCreationForTypes

#Restrict Public IP access on Cloud SQL instances
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/sql.restrictPublicIp

#Restrict Shared VPC Host Projects
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictSharedVpcHostProjects

#Restrict shared VPC project lien removal
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictXpnProjectLienRemoval

#Restrict Shared VPC Subnetworks
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictSharedVpcSubnetworks

#Restrict VM IP Forwarding
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.vmCanIpForward

#Restrict VPC peering usage
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictVpcPeering

#Restrict VPN Peer IPs
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.restrictVpnPeerIPs

#Retention policy duration in seconds
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/storage.retentionPolicySeconds

#Shielded VMs
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.requireShieldedVm

#Skip default network creation
gcloud resource-manager org-policies $set --zone $zone --project $project constraints/compute.skipDefaultNetworkCreation
