# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DnsV2
      
      class Change
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChangesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKeyDigest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKeySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DnsKeysListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneCloudLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneDnsSecConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneForwardingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneForwardingConfigNameServerTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneOperationsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePeeringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePeeringConfigTargetNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePrivateVisibilityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePrivateVisibilityConfigGkeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonePrivateVisibilityConfigNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneReverseLookupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneServiceDirectoryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZoneServiceDirectoryConfigNamespace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedZonesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationDnsKeyContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationManagedZoneContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoliciesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoliciesPatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PoliciesUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyAlternativeNameServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyAlternativeNameServerConfigTargetNameServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Quota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyGeoPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyGeoPolicyGeoPolicyItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyWrrPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RrSetRoutingPolicyWrrPolicyWrrPolicyItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRecordSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceRecordSetsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePoliciesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePoliciesPatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePoliciesUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyGkeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRuleLocalData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRulesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRulesPatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponsePolicyRulesUpdateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Change
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additions, as: 'additions', class: Google::Apis::DnsV2::ResourceRecordSet, decorator: Google::Apis::DnsV2::ResourceRecordSet::Representation
      
          collection :deletions, as: 'deletions', class: Google::Apis::DnsV2::ResourceRecordSet, decorator: Google::Apis::DnsV2::ResourceRecordSet::Representation
      
          property :id, as: 'id'
          property :is_serving, as: 'isServing'
          property :kind, as: 'kind'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
        end
      end
      
      class ChangesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :changes, as: 'changes', class: Google::Apis::DnsV2::Change, decorator: Google::Apis::DnsV2::Change::Representation
      
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DnsKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :creation_time, as: 'creationTime'
          property :description, as: 'description'
          collection :digests, as: 'digests', class: Google::Apis::DnsV2::DnsKeyDigest, decorator: Google::Apis::DnsV2::DnsKeyDigest::Representation
      
          property :id, as: 'id'
          property :is_active, as: 'isActive'
          property :key_length, as: 'keyLength'
          property :key_tag, as: 'keyTag'
          property :kind, as: 'kind'
          property :public_key, as: 'publicKey'
          property :type, as: 'type'
        end
      end
      
      class DnsKeyDigest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :type, as: 'type'
        end
      end
      
      class DnsKeySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :key_length, as: 'keyLength'
          property :key_type, as: 'keyType'
          property :kind, as: 'kind'
        end
      end
      
      class DnsKeysListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_keys, as: 'dnsKeys', class: Google::Apis::DnsV2::DnsKey, decorator: Google::Apis::DnsV2::DnsKey::Representation
      
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ManagedZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_logging_config, as: 'cloudLoggingConfig', class: Google::Apis::DnsV2::ManagedZoneCloudLoggingConfig, decorator: Google::Apis::DnsV2::ManagedZoneCloudLoggingConfig::Representation
      
          property :creation_time, as: 'creationTime'
          property :description, as: 'description'
          property :dns_name, as: 'dnsName'
          property :dnssec_config, as: 'dnssecConfig', class: Google::Apis::DnsV2::ManagedZoneDnsSecConfig, decorator: Google::Apis::DnsV2::ManagedZoneDnsSecConfig::Representation
      
          property :forwarding_config, as: 'forwardingConfig', class: Google::Apis::DnsV2::ManagedZoneForwardingConfig, decorator: Google::Apis::DnsV2::ManagedZoneForwardingConfig::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :name_server_set, as: 'nameServerSet'
          collection :name_servers, as: 'nameServers'
          property :peering_config, as: 'peeringConfig', class: Google::Apis::DnsV2::ManagedZonePeeringConfig, decorator: Google::Apis::DnsV2::ManagedZonePeeringConfig::Representation
      
          property :private_visibility_config, as: 'privateVisibilityConfig', class: Google::Apis::DnsV2::ManagedZonePrivateVisibilityConfig, decorator: Google::Apis::DnsV2::ManagedZonePrivateVisibilityConfig::Representation
      
          property :reverse_lookup_config, as: 'reverseLookupConfig', class: Google::Apis::DnsV2::ManagedZoneReverseLookupConfig, decorator: Google::Apis::DnsV2::ManagedZoneReverseLookupConfig::Representation
      
          property :service_directory_config, as: 'serviceDirectoryConfig', class: Google::Apis::DnsV2::ManagedZoneServiceDirectoryConfig, decorator: Google::Apis::DnsV2::ManagedZoneServiceDirectoryConfig::Representation
      
          property :visibility, as: 'visibility'
        end
      end
      
      class ManagedZoneCloudLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_logging, as: 'enableLogging'
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZoneDnsSecConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_key_specs, as: 'defaultKeySpecs', class: Google::Apis::DnsV2::DnsKeySpec, decorator: Google::Apis::DnsV2::DnsKeySpec::Representation
      
          property :kind, as: 'kind'
          property :non_existence, as: 'nonExistence'
          property :state, as: 'state'
        end
      end
      
      class ManagedZoneForwardingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :target_name_servers, as: 'targetNameServers', class: Google::Apis::DnsV2::ManagedZoneForwardingConfigNameServerTarget, decorator: Google::Apis::DnsV2::ManagedZoneForwardingConfigNameServerTarget::Representation
      
        end
      end
      
      class ManagedZoneForwardingConfigNameServerTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :forwarding_path, as: 'forwardingPath'
          property :ipv4_address, as: 'ipv4Address'
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZoneOperationsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DnsV2::Operation, decorator: Google::Apis::DnsV2::Operation::Representation
      
        end
      end
      
      class ManagedZonePeeringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :target_network, as: 'targetNetwork', class: Google::Apis::DnsV2::ManagedZonePeeringConfigTargetNetwork, decorator: Google::Apis::DnsV2::ManagedZonePeeringConfigTargetNetwork::Representation
      
        end
      end
      
      class ManagedZonePeeringConfigTargetNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deactivate_time, as: 'deactivateTime'
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class ManagedZonePrivateVisibilityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gke_clusters, as: 'gkeClusters', class: Google::Apis::DnsV2::ManagedZonePrivateVisibilityConfigGkeCluster, decorator: Google::Apis::DnsV2::ManagedZonePrivateVisibilityConfigGkeCluster::Representation
      
          property :kind, as: 'kind'
          collection :networks, as: 'networks', class: Google::Apis::DnsV2::ManagedZonePrivateVisibilityConfigNetwork, decorator: Google::Apis::DnsV2::ManagedZonePrivateVisibilityConfigNetwork::Representation
      
        end
      end
      
      class ManagedZonePrivateVisibilityConfigGkeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gke_cluster_name, as: 'gkeClusterName'
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZonePrivateVisibilityConfigNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class ManagedZoneReverseLookupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class ManagedZoneServiceDirectoryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :namespace, as: 'namespace', class: Google::Apis::DnsV2::ManagedZoneServiceDirectoryConfigNamespace, decorator: Google::Apis::DnsV2::ManagedZoneServiceDirectoryConfigNamespace::Representation
      
        end
      end
      
      class ManagedZoneServiceDirectoryConfigNamespace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deletion_time, as: 'deletionTime'
          property :kind, as: 'kind'
          property :namespace_url, as: 'namespaceUrl'
        end
      end
      
      class ManagedZonesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          collection :managed_zones, as: 'managedZones', class: Google::Apis::DnsV2::ManagedZone, decorator: Google::Apis::DnsV2::ManagedZone::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_key_context, as: 'dnsKeyContext', class: Google::Apis::DnsV2::OperationDnsKeyContext, decorator: Google::Apis::DnsV2::OperationDnsKeyContext::Representation
      
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :type, as: 'type'
          property :user, as: 'user'
          property :zone_context, as: 'zoneContext', class: Google::Apis::DnsV2::OperationManagedZoneContext, decorator: Google::Apis::DnsV2::OperationManagedZoneContext::Representation
      
        end
      end
      
      class OperationDnsKeyContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue', class: Google::Apis::DnsV2::DnsKey, decorator: Google::Apis::DnsV2::DnsKey::Representation
      
          property :old_value, as: 'oldValue', class: Google::Apis::DnsV2::DnsKey, decorator: Google::Apis::DnsV2::DnsKey::Representation
      
        end
      end
      
      class OperationManagedZoneContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue', class: Google::Apis::DnsV2::ManagedZone, decorator: Google::Apis::DnsV2::ManagedZone::Representation
      
          property :old_value, as: 'oldValue', class: Google::Apis::DnsV2::ManagedZone, decorator: Google::Apis::DnsV2::ManagedZone::Representation
      
        end
      end
      
      class PoliciesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :policies, as: 'policies', class: Google::Apis::DnsV2::Policy, decorator: Google::Apis::DnsV2::Policy::Representation
      
        end
      end
      
      class PoliciesPatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :policy, as: 'policy', class: Google::Apis::DnsV2::Policy, decorator: Google::Apis::DnsV2::Policy::Representation
      
        end
      end
      
      class PoliciesUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :policy, as: 'policy', class: Google::Apis::DnsV2::Policy, decorator: Google::Apis::DnsV2::Policy::Representation
      
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alternative_name_server_config, as: 'alternativeNameServerConfig', class: Google::Apis::DnsV2::PolicyAlternativeNameServerConfig, decorator: Google::Apis::DnsV2::PolicyAlternativeNameServerConfig::Representation
      
          property :description, as: 'description'
          property :enable_inbound_forwarding, as: 'enableInboundForwarding'
          property :enable_logging, as: 'enableLogging'
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
          collection :networks, as: 'networks', class: Google::Apis::DnsV2::PolicyNetwork, decorator: Google::Apis::DnsV2::PolicyNetwork::Representation
      
        end
      end
      
      class PolicyAlternativeNameServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :target_name_servers, as: 'targetNameServers', class: Google::Apis::DnsV2::PolicyAlternativeNameServerConfigTargetNameServer, decorator: Google::Apis::DnsV2::PolicyAlternativeNameServerConfigTargetNameServer::Representation
      
        end
      end
      
      class PolicyAlternativeNameServerConfigTargetNameServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :forwarding_path, as: 'forwardingPath'
          property :ipv4_address, as: 'ipv4Address'
          property :kind, as: 'kind'
        end
      end
      
      class PolicyNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :number, :numeric_string => true, as: 'number'
          property :quota, as: 'quota', class: Google::Apis::DnsV2::Quota, decorator: Google::Apis::DnsV2::Quota::Representation
      
        end
      end
      
      class Quota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dns_keys_per_managed_zone, as: 'dnsKeysPerManagedZone'
          property :items_per_routing_policy, as: 'itemsPerRoutingPolicy'
          property :kind, as: 'kind'
          property :managed_zones, as: 'managedZones'
          property :managed_zones_per_network, as: 'managedZonesPerNetwork'
          property :networks_per_managed_zone, as: 'networksPerManagedZone'
          property :networks_per_policy, as: 'networksPerPolicy'
          property :peering_zones_per_target_network, as: 'peeringZonesPerTargetNetwork'
          property :policies, as: 'policies'
          property :resource_records_per_rrset, as: 'resourceRecordsPerRrset'
          property :rrset_additions_per_change, as: 'rrsetAdditionsPerChange'
          property :rrset_deletions_per_change, as: 'rrsetDeletionsPerChange'
          property :rrsets_per_managed_zone, as: 'rrsetsPerManagedZone'
          property :target_name_servers_per_managed_zone, as: 'targetNameServersPerManagedZone'
          property :target_name_servers_per_policy, as: 'targetNameServersPerPolicy'
          property :total_rrdata_size_per_change, as: 'totalRrdataSizePerChange'
          collection :whitelisted_key_specs, as: 'whitelistedKeySpecs', class: Google::Apis::DnsV2::DnsKeySpec, decorator: Google::Apis::DnsV2::DnsKeySpec::Representation
      
        end
      end
      
      class RrSetRoutingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geo, as: 'geo', class: Google::Apis::DnsV2::RrSetRoutingPolicyGeoPolicy, decorator: Google::Apis::DnsV2::RrSetRoutingPolicyGeoPolicy::Representation
      
          property :kind, as: 'kind'
          property :wrr, as: 'wrr', class: Google::Apis::DnsV2::RrSetRoutingPolicyWrrPolicy, decorator: Google::Apis::DnsV2::RrSetRoutingPolicyWrrPolicy::Representation
      
        end
      end
      
      class RrSetRoutingPolicyGeoPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DnsV2::RrSetRoutingPolicyGeoPolicyGeoPolicyItem, decorator: Google::Apis::DnsV2::RrSetRoutingPolicyGeoPolicyGeoPolicyItem::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class RrSetRoutingPolicyGeoPolicyGeoPolicyItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :location, as: 'location'
          collection :rrdatas, as: 'rrdatas'
          collection :signature_rrdatas, as: 'signatureRrdatas'
        end
      end
      
      class RrSetRoutingPolicyWrrPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DnsV2::RrSetRoutingPolicyWrrPolicyWrrPolicyItem, decorator: Google::Apis::DnsV2::RrSetRoutingPolicyWrrPolicyWrrPolicyItem::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class RrSetRoutingPolicyWrrPolicyWrrPolicyItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :rrdatas, as: 'rrdatas'
          collection :signature_rrdatas, as: 'signatureRrdatas'
          property :weight, as: 'weight'
        end
      end
      
      class ResourceRecordSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :routing_policy, as: 'routingPolicy', class: Google::Apis::DnsV2::RrSetRoutingPolicy, decorator: Google::Apis::DnsV2::RrSetRoutingPolicy::Representation
      
          collection :rrdatas, as: 'rrdatas'
          collection :signature_rrdatas, as: 'signatureRrdatas'
          property :ttl, as: 'ttl'
          property :type, as: 'type'
        end
      end
      
      class ResourceRecordSetsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :rrsets, as: 'rrsets', class: Google::Apis::DnsV2::ResourceRecordSet, decorator: Google::Apis::DnsV2::ResourceRecordSet::Representation
      
        end
      end
      
      class ResponseHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
        end
      end
      
      class ResponsePoliciesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :response_policies, as: 'responsePolicies', class: Google::Apis::DnsV2::ResponsePolicy, decorator: Google::Apis::DnsV2::ResponsePolicy::Representation
      
        end
      end
      
      class ResponsePoliciesPatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :response_policy, as: 'responsePolicy', class: Google::Apis::DnsV2::ResponsePolicy, decorator: Google::Apis::DnsV2::ResponsePolicy::Representation
      
        end
      end
      
      class ResponsePoliciesUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :response_policy, as: 'responsePolicy', class: Google::Apis::DnsV2::ResponsePolicy, decorator: Google::Apis::DnsV2::ResponsePolicy::Representation
      
        end
      end
      
      class ResponsePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :gke_clusters, as: 'gkeClusters', class: Google::Apis::DnsV2::ResponsePolicyGkeCluster, decorator: Google::Apis::DnsV2::ResponsePolicyGkeCluster::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          collection :networks, as: 'networks', class: Google::Apis::DnsV2::ResponsePolicyNetwork, decorator: Google::Apis::DnsV2::ResponsePolicyNetwork::Representation
      
          property :response_policy_name, as: 'responsePolicyName'
        end
      end
      
      class ResponsePolicyGkeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gke_cluster_name, as: 'gkeClusterName'
          property :kind, as: 'kind'
        end
      end
      
      class ResponsePolicyNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :network_url, as: 'networkUrl'
        end
      end
      
      class ResponsePolicyRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :behavior, as: 'behavior'
          property :dns_name, as: 'dnsName'
          property :kind, as: 'kind'
          property :local_data, as: 'localData', class: Google::Apis::DnsV2::ResponsePolicyRuleLocalData, decorator: Google::Apis::DnsV2::ResponsePolicyRuleLocalData::Representation
      
          property :rule_name, as: 'ruleName'
        end
      end
      
      class ResponsePolicyRuleLocalData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :local_datas, as: 'localDatas', class: Google::Apis::DnsV2::ResourceRecordSet, decorator: Google::Apis::DnsV2::ResourceRecordSet::Representation
      
        end
      end
      
      class ResponsePolicyRulesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :response_policy_rules, as: 'responsePolicyRules', class: Google::Apis::DnsV2::ResponsePolicyRule, decorator: Google::Apis::DnsV2::ResponsePolicyRule::Representation
      
        end
      end
      
      class ResponsePolicyRulesPatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :response_policy_rule, as: 'responsePolicyRule', class: Google::Apis::DnsV2::ResponsePolicyRule, decorator: Google::Apis::DnsV2::ResponsePolicyRule::Representation
      
        end
      end
      
      class ResponsePolicyRulesUpdateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DnsV2::ResponseHeader, decorator: Google::Apis::DnsV2::ResponseHeader::Representation
      
          property :response_policy_rule, as: 'responsePolicyRule', class: Google::Apis::DnsV2::ResponsePolicyRule, decorator: Google::Apis::DnsV2::ResponsePolicyRule::Representation
      
        end
      end
    end
  end
end
