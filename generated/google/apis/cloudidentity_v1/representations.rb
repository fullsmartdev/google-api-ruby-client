# Copyright 2015 Google Inc.
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
    module CloudidentityV1
      
      class EntityKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ApproveDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1BlockDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1CancelWipeDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1CancelWipeDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1Device
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1DeviceUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1EndpointApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ListDeviceUsersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ListDevicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ListEndpointAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1WipeDeviceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1WipeDeviceUserResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupGroupNameResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupMembershipNameResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MembershipRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :namespace, as: 'namespace'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseband_version, as: 'basebandVersion'
          property :bootloader_version, as: 'bootloaderVersion'
          property :build_number, as: 'buildNumber'
          property :enabled_developer_options, as: 'enabledDeveloperOptions'
          property :enabled_unknown_sources, as: 'enabledUnknownSources'
          property :enabled_usb_debugging, as: 'enabledUsbDebugging'
          property :encryption_state, as: 'encryptionState'
          property :hardware, as: 'hardware'
          property :kernel_version, as: 'kernelVersion'
          collection :other_accounts, as: 'otherAccounts'
          property :owner_profile_account, as: 'ownerProfileAccount'
          property :ownership_privilege, as: 'ownershipPrivilege'
          property :security_patch_time, as: 'securityPatchTime'
          property :supports_work_profile, as: 'supportsWorkProfile'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ApproveDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1BlockDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1CancelWipeDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1Device, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1Device::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1CancelWipeDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1Device
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_specific_attributes, as: 'androidSpecificAttributes', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1AndroidAttributes::Representation
      
          property :asset_tag, as: 'assetTag'
          property :brand, as: 'brand'
          property :compromised_state, as: 'compromisedState'
          property :create_time, as: 'createTime'
          property :device_type, as: 'deviceType'
          property :imei, as: 'imei'
          property :last_sync_time, as: 'lastSyncTime'
          property :management_state, as: 'managementState'
          property :manufacturer, as: 'manufacturer'
          property :meid, as: 'meid'
          property :model, as: 'model'
          property :name, as: 'name'
          property :network_operator, as: 'networkOperator'
          property :os_version, as: 'osVersion'
          property :owner_type, as: 'ownerType'
          property :release_version, as: 'releaseVersion'
          property :serial_number, as: 'serialNumber'
          collection :wifi_mac_addresses, as: 'wifiMacAddresses'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1DeviceUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compromised_state, as: 'compromisedState'
          property :first_sync_time, as: 'firstSyncTime'
          property :language_code, as: 'languageCode'
          property :last_sync_time, as: 'lastSyncTime'
          property :management_state, as: 'managementState'
          property :name, as: 'name'
          property :password_state, as: 'passwordState'
          property :user_agent, as: 'userAgent'
          property :user_email, as: 'userEmail'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1EndpointApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :package_name, as: 'packageName'
          collection :permissions, as: 'permissions'
          property :version_code, as: 'versionCode'
          property :version_name, as: 'versionName'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ListDeviceUsersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_users, as: 'deviceUsers', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ListDevicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :devices, as: 'devices', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1Device, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1Device::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1ListEndpointAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_apps, as: 'endpointApps', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1EndpointApp, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1EndpointApp::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1WipeDeviceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device, as: 'device', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1Device, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1Device::Representation
      
        end
      end
      
      class GoogleAppsCloudidentityDevicesV1alpha1WipeDeviceUserResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_user, as: 'deviceUser', class: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser, decorator: Google::Apis::CloudidentityV1::GoogleAppsCloudidentityDevicesV1alpha1DeviceUser::Representation
      
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :group_key, as: 'groupKey', class: Google::Apis::CloudidentityV1::EntityKey, decorator: Google::Apis::CloudidentityV1::EntityKey::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1::Group, decorator: Google::Apis::CloudidentityV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::CloudidentityV1::Membership, decorator: Google::Apis::CloudidentityV1::Membership::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LookupGroupNameResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class LookupMembershipNameResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :preferred_member_key, as: 'preferredMemberKey', class: Google::Apis::CloudidentityV1::EntityKey, decorator: Google::Apis::CloudidentityV1::EntityKey::Representation
      
          collection :roles, as: 'roles', class: Google::Apis::CloudidentityV1::MembershipRole, decorator: Google::Apis::CloudidentityV1::MembershipRole::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class MembershipRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudidentityV1::Status, decorator: Google::Apis::CloudidentityV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class SearchGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::CloudidentityV1::Group, decorator: Google::Apis::CloudidentityV1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
