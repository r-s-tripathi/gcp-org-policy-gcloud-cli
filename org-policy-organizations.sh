#!/bin/bash

###Organization Policies

##List Types

#Compute
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictVpnPeerIPs All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictVpcPeering All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.vmCanIpForward All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictSharedVpcSubnetworks All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictSharedVpcHostorganizations All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictPartnerInterconnectUsage All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictProtocolForwardingCreationForTypes All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictDirectGoogleAccess All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictLoadBalancerCreationForTypes All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictCloudNATUsage All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictDedicatedInterconnectUsage All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.restrictAuthenticatedGoogleConnection All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.storageResourceUseRestrictions All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.trustedImageorganizations All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/compute.vmExternalIpAccess All

#IAM
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/iam.allowServiceAccountCredentialLifetimeExtension All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/iam.workloadIdentityPoolProviders All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/iam.allowedPolicyMemberDomains All

#Functions
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/cloudfunctions.allowedIngressSettings All
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/cloudfunctions.allowedVpcConnectorEgressSettings All

#User
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/serviceuser.services All

#Storage
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/storage.retentionPolicySeconds All

#GCP
gcloud resource-manager org-policies allow --organization ${{secrets.organization}} --quiet constraints/gcp.resourceLocations All

##Boolean Types

#Compute
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.restrictXpnorganizationLienRemoval
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.requireShieldedVm
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.skipDefaultNetworkCreation	
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.disableNestedVirtualization
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.disableSerialPortAccess
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.disableSerialPortLogging
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.disableGuestAttributesAccess
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.disableInternetNetworkEndpointGroup  
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/compute.requireOsLogin

#IAM
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/iam.disableServiceAccountCreation
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/iam.disableServiceAccountKeyCreation
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/iam.disableServiceAccountKeyUpload
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/iam.disableWorkloadIdentityClusterCreation
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/iam.automaticIamGrantsForDefaultServiceAccounts

#SQL
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/sql.restrictAuthorizedNetworks
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/sql.disableDefaultEncryptionCreation
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/sql.restrictPublicIp

#GCP
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/gcp.disableCloudLogging
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/gcp.detailedAuditLoggingMode

#AppEngine
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/appengine.disableCodeDownload

#Storage
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/storage.uniformBucketLevelAccess

#Functions
gcloud resource-manager org-policies disable-enforce --organization ${{secrets.organization}} --quiet constraints/cloudfunctions.requireVPCConnector
