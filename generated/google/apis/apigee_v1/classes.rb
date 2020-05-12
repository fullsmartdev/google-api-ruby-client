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
    module ApigeeV1
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or
      # an HTML page.
      # This message can be used both in streaming and non-streaming API methods in
      # the request as well as the response.
      # It can be used as a top-level request field, which is convenient if one
      # wants to extract parameters from either the URL or HTTP template into the
      # request fields and also want access to the raw HTTP body.
      # Example:
      # message GetResourceRequest `
      # // A unique request id.
      # string request_id = 1;
      # // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2;
      # `
      # service ResourceService `
      # rpc GetResource(GetResourceRequest) returns (google.api.HttpBody);
      # rpc UpdateResource(google.api.HttpBody) returns
      # (google.protobuf.Empty);
      # `
      # Example with streaming methods:
      # service CaldavService `
      # rpc GetCalendar(stream google.api.HttpBody)
      # returns (stream google.api.HttpBody);
      # rpc UpdateCalendar(stream google.api.HttpBody)
      # returns (stream google.api.HttpBody);
      # `
      # Use of this type only changes how the request and response bodies are
      # handled, all other features will continue to work unchanged.
      class GoogleApiHttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response
        # for streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Access
        include Google::Apis::Core::Hashable
      
        # Get action. For example,
        # "Get" : `
        # "name" : "target.name",
        # "value" : "default"
        # `
        # Corresponds to the JSON property `Get`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessGet]
        attr_accessor :get
      
        # Remove action. For example,
        # "Remove" : `
        # "name" : "target.name",
        # "success" : true
        # `
        # Corresponds to the JSON property `Remove`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessRemove]
        attr_accessor :remove
      
        # Set action. For example,
        # "Set" : `
        # "name" : "target.name",
        # "success" : true,
        # "value" : "default"
        # `
        # Corresponds to the JSON property `Set`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AccessSet]
        attr_accessor :set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @get = args[:get] if args.key?(:get)
          @remove = args[:remove] if args.key?(:remove)
          @set = args[:set] if args.key?(:set)
        end
      end
      
      # Get action. For example,
      # "Get" : `
      # "name" : "target.name",
      # "value" : "default"
      # `
      class GoogleCloudApigeeV1AccessGet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Remove action. For example,
      # "Remove" : `
      # "name" : "target.name",
      # "success" : true
      # `
      class GoogleCloudApigeeV1AccessRemove
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # Set action. For example,
      # "Set" : `
      # "name" : "target.name",
      # "success" : true,
      # "value" : "default"
      # `
      class GoogleCloudApigeeV1AccessSet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        # 
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @success = args[:success] if args.key?(:success)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A reference to a certificate or key, certificate pair.
      class GoogleCloudApigeeV1Alias
        include Google::Apis::Core::Hashable
      
        # The resource ID for this alias. Values must match regular expression
        # `[^/]`1,255``.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # The chain of certificates under this alias.
        # Corresponds to the JSON property `certsInfo`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Certificate]
        attr_accessor :certs_info
      
        # The type of alias.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @certs_info = args[:certs_info] if args.key?(:certs_info)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1AliasRevisionConfig
        include Google::Apis::Core::Hashable
      
        # The location of the alias file, e.g. a GCS URI.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The name of the alias revision included in the keystore. Must be of the
        # form:
        # 'organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias`/
        # revisions/`rev`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ApiProduct
        include Google::Apis::Core::Hashable
      
        # Comma-separated list of API resources to be bundled in the API Product.
        # By default, the resource paths are mapped from the `proxy.pathsuffix`
        # variable.
        # The proxy path suffix is defined as the URI fragment following the
        # ProxyEndpoint base path.
        # For example, if the `apiResources` element is defined to be
        # `/forecastrss` and the base path defined for the API proxy is
        # `/weather`, then only requests to `/weather/forecastrss` are permitted by
        # the API product.
        # You can select a specific path, or you can select all subpaths with the
        # following wildcard:
        # - /**: Indicates that all sub-URIs are included.
        # - /* : Indicates that only URIs one level down are included.
        # By default, / supports the same resources as /** as well as the base path
        # defined by the API proxy.
        # For example, if the base path of the API proxy is `/v1/weatherapikey`,
        # then the API product supports requests to `/v1/weatherapikey` and to any
        # sub-URIs, such as `/v1/weatherapikey/forecastrss`,
        # `/v1/weatherapikey/region/CA`, and so on.
        # For more information, see:
        # - <a href="/api-platform/publish/create-api-products">Manage API
        # products</a>
        # - <a
        # href="/api-platform/monetization/create-transaction-recording-policy#
        # spectrpcaapi">Managing
        # a transaction recording policy using the API</a>
        # Corresponds to the JSON property `apiResources`
        # @return [Array<String>]
        attr_accessor :api_resources
      
        # Specifies how API keys are approved to access the APIs defined by the API
        # product.
        # If set to `manual`, the consumer key is generated and returned in "pending"
        # state. In this case, the API keys won't work until they have been
        # explicitly approved.
        # If set to `auto`, the consumer key is generated and returned in "approved"
        # state and can be used immediately.
        # <aside class="note"><strong>NOTE:</strong> Typically, `auto` is used
        # to provide access to free or trial API products that provide limited quota
        # or capabilities.</aside>
        # Corresponds to the JSON property `approvalType`
        # @return [String]
        attr_accessor :approval_type
      
        # Array of attributes that may be used to extend the default API product
        # profile with customer-specific metadata. You can specify a maximum of 18
        # attributes.
        # Use this property to specify the access level of the API product as either
        # `public`, `private`, or `internal`.
        # Only products marked `public` are available to developers in the Apigee
        # developer portal. For example, you can set a product to `internal` while it
        # is in development and then change access to `public` when it is ready to
        # release on the portal.
        # API products marked as `private` do not appear on the portal but
        # can be accessed by external developers.
        # For monetization, you can use the attributes field to:
        # - <a
        # href="/api-platform/monetization/create-transaction-recording-policy#
        # spectrpsuccessapi"
        # target="_blank">Specify transaction success criteria</a>
        # - <a
        # href="/api-platform/monetization/create-transaction-recording-policy#
        # spectrpcaapi"
        # target="_blank">Specify custom attributes</a> on which you base rate plan
        # charges</a>.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Response only. Creation time of this environment as milliseconds since
        # epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # An overview of the API product. Include key information about the API
        # product that is not captured by other fields.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name to be displayed in the UI or developer portal to developers
        # registering for API access.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A comma-separated list of environment names to which the API product is
        # bound. Requests to environments that are not listed are rejected.
        # By specifying one or more environments, you can bind the resources listed
        # in the API product to a specific environment, preventing developers from
        # accessing those resources through API proxies deployed in another
        # environment.
        # This setting is used, for example, to prevent resources associated with
        # API proxies in 'prod' from being accessed by API proxies deployed in
        # 'test'.
        # Corresponds to the JSON property `environments`
        # @return [Array<String>]
        attr_accessor :environments
      
        # Response only. Modified time of this environment as milliseconds since
        # epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # The internal name of the API Product. Characters you can use in the name
        # are restricted to: A-Z0-9._\-$ %.
        # <aside class="note"><strong>NOTE:</strong> The internal name cannot be
        # edited when updating the API product.</aside>
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A comma-separated list of API proxy names to which this API product is
        # bound. By specifying API proxies, you can associate resources in the API
        # product with specific API proxies, preventing developers from accessing
        # those resources through other API proxies.
        # Edge rejects requests to API proxies that are not listed.
        # <aside class="note"><strong>NOTE:</strong> The API proxy names must already
        # exist in the specified environment as they will be validated upon
        # creation.</aside>
        # Corresponds to the JSON property `proxies`
        # @return [Array<String>]
        attr_accessor :proxies
      
        # The number of request messages permitted per app by this API product for
        # the specified `quotaInterval` and `quotaTimeUnit`.
        # For example, a `quota` of 50, for a `quotaInterval` of 12 and a
        # `quotaTimeUnit` of hours means 50 requests are allowed every 12 hours.
        # Corresponds to the JSON property `quota`
        # @return [String]
        attr_accessor :quota
      
        # The time interval over which the number of request messages is calculated.
        # Corresponds to the JSON property `quotaInterval`
        # @return [String]
        attr_accessor :quota_interval
      
        # The time unit defined for the `quotaInterval`. Valid values include minute,
        # hour, day, or month.
        # Corresponds to the JSON property `quotaTimeUnit`
        # @return [String]
        attr_accessor :quota_time_unit
      
        # A comma-separated list of OAuth scopes that are validated at runtime.
        # Edge validates that the scopes in any access token presented match the
        # scopes defined in the OAuth policy assoicated with the API product.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_resources = args[:api_resources] if args.key?(:api_resources)
          @approval_type = args[:approval_type] if args.key?(:approval_type)
          @attributes = args[:attributes] if args.key?(:attributes)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environments = args[:environments] if args.key?(:environments)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @proxies = args[:proxies] if args.key?(:proxies)
          @quota = args[:quota] if args.key?(:quota)
          @quota_interval = args[:quota_interval] if args.key?(:quota_interval)
          @quota_time_unit = args[:quota_time_unit] if args.key?(:quota_time_unit)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ApiProductRef
        include Google::Apis::Core::Hashable
      
        # Name of the API product.
        # Corresponds to the JSON property `apiproduct`
        # @return [String]
        attr_accessor :apiproduct
      
        # Status of the API product.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apiproduct = args[:apiproduct] if args.key?(:apiproduct)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Metadata describing the API proxy
      class GoogleCloudApigeeV1ApiProxy
        include Google::Apis::Core::Hashable
      
        # The id of the most recently created revision for this api proxy.
        # Corresponds to the JSON property `latestRevisionId`
        # @return [String]
        attr_accessor :latest_revision_id
      
        # Metadata common to many entities in this API.
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata]
        attr_accessor :meta_data
      
        # Name of the API proxy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of revisons defined for the API proxy.
        # Corresponds to the JSON property `revision`
        # @return [Array<String>]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_revision_id = args[:latest_revision_id] if args.key?(:latest_revision_id)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
          @name = args[:name] if args.key?(:name)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # API proxy revision.
      class GoogleCloudApigeeV1ApiProxyRevision
        include Google::Apis::Core::Hashable
      
        # Base URL of the API proxy.
        # Corresponds to the JSON property `basepaths`
        # @return [Array<String>]
        attr_accessor :basepaths
      
        # Version of the API proxy configuration schema. Currently, only 4.0 is
        # supported.
        # Corresponds to the JSON property `configurationVersion`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion]
        attr_accessor :configuration_version
      
        # Revision number, app name, and organization for the API proxy.
        # Corresponds to the JSON property `contextInfo`
        # @return [String]
        attr_accessor :context_info
      
        # Time that the API proxy revision was created in milliseconds since
        # epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Description of the API proxy revision.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Human-readable name of the API proxy.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Metadata describing the API proxy revision as a key-value map.
        # Corresponds to the JSON property `entityMetaDataAsProperties`
        # @return [Hash<String,String>]
        attr_accessor :entity_meta_data_as_properties
      
        # Time that the API proxy revision was last modified in
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Name of the API proxy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of policy names included in the API proxy revision..
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # List of proxy names included in the API proxy revision.
        # Corresponds to the JSON property `proxies`
        # @return [Array<String>]
        attr_accessor :proxies
      
        # List of ProxyEndpoints in the `/proxies` directory of the API proxy.
        # Typically, this element is included only when the API proxy was created
        # using the Edge UI. This is a 'manifest' setting designed to
        # provide visibility into the contents of the API proxy.
        # Corresponds to the JSON property `proxyEndpoints`
        # @return [Array<String>]
        attr_accessor :proxy_endpoints
      
        # List of resource files.
        # Corresponds to the JSON property `resourceFiles`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles]
        attr_accessor :resource_files
      
        # List of the resources included in the API proxy revision formatted as
        # "`type`://`name`".
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # API proxy revision.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # List of the shared flows included in the API proxy revision.
        # Corresponds to the JSON property `sharedFlows`
        # @return [Array<String>]
        attr_accessor :shared_flows
      
        # OpenAPI Specification that is associated with the API proxy.
        # The value is set to a URL or to a path in the specification store.
        # Corresponds to the JSON property `spec`
        # @return [String]
        attr_accessor :spec
      
        # List of TargetEndpoints in the `/targets` directory of the API proxy.
        # Typically, this element is included only when the API proxy was created
        # using the Edge  UI. This is a 'manifest' setting designed to
        # provide visibility into the contents of the API proxy.
        # Corresponds to the JSON property `targetEndpoints`
        # @return [Array<String>]
        attr_accessor :target_endpoints
      
        # List of TargetServers referenced in any TargetEndpoint in the API
        # proxy. Typically, you will see this element only when the API proxy was
        # created using the Edge UI. This is a 'manifest' setting
        # designed to provide visibility into the contents of the API proxy.
        # Corresponds to the JSON property `targetServers`
        # @return [Array<String>]
        attr_accessor :target_servers
      
        # List of the targets included in the API proxy revision.
        # Corresponds to the JSON property `targets`
        # @return [Array<String>]
        attr_accessor :targets
      
        # List of the teams included in the API proxy revision.
        # Corresponds to the JSON property `teams`
        # @return [Array<String>]
        attr_accessor :teams
      
        # Type. Set to `Application`. Maintained for compatibility with
        # the Apigee Edge API.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basepaths = args[:basepaths] if args.key?(:basepaths)
          @configuration_version = args[:configuration_version] if args.key?(:configuration_version)
          @context_info = args[:context_info] if args.key?(:context_info)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_meta_data_as_properties = args[:entity_meta_data_as_properties] if args.key?(:entity_meta_data_as_properties)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @policies = args[:policies] if args.key?(:policies)
          @proxies = args[:proxies] if args.key?(:proxies)
          @proxy_endpoints = args[:proxy_endpoints] if args.key?(:proxy_endpoints)
          @resource_files = args[:resource_files] if args.key?(:resource_files)
          @resources = args[:resources] if args.key?(:resources)
          @revision = args[:revision] if args.key?(:revision)
          @shared_flows = args[:shared_flows] if args.key?(:shared_flows)
          @spec = args[:spec] if args.key?(:spec)
          @target_endpoints = args[:target_endpoints] if args.key?(:target_endpoints)
          @target_servers = args[:target_servers] if args.key?(:target_servers)
          @targets = args[:targets] if args.key?(:targets)
          @teams = args[:teams] if args.key?(:teams)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1App
        include Google::Apis::Core::Hashable
      
        # List of API products associated with the app.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef>]
        attr_accessor :api_products
      
        # ID of the app.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # List of attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Callback URL used by OAuth 2.0 authorization servers to communicate
        # authorization codes back to apps.
        # Corresponds to the JSON property `callbackUrl`
        # @return [String]
        attr_accessor :callback_url
      
        # Name of the company that owns the app.
        # Corresponds to the JSON property `companyName`
        # @return [String]
        attr_accessor :company_name
      
        # Output only. Unix time when the app was created.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Output only. Set of credentials for the app. Credentials are API
        # key/secret pairs associated with API products.
        # Corresponds to the JSON property `credentials`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential>]
        attr_accessor :credentials
      
        # ID  of the developer.
        # Corresponds to the JSON property `developerId`
        # @return [String]
        attr_accessor :developer_id
      
        # Duration, in milliseconds, of the consumer key that will
        # be generated for the app. The default value, -1, indicates an
        # infinite validity period. Once set, the expiration can't be updated.
        # json key: keyExpiresIn
        # Corresponds to the JSON property `keyExpiresIn`
        # @return [Fixnum]
        attr_accessor :key_expires_in
      
        # Output only. Last modified time as milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Name of the app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Scopes to apply to the app. The specified scope names must already
        # exist on the API product that you associate with the app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @app_id = args[:app_id] if args.key?(:app_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @callback_url = args[:callback_url] if args.key?(:callback_url)
          @company_name = args[:company_name] if args.key?(:company_name)
          @created_at = args[:created_at] if args.key?(:created_at)
          @credentials = args[:credentials] if args.key?(:credentials)
          @developer_id = args[:developer_id] if args.key?(:developer_id)
          @key_expires_in = args[:key_expires_in] if args.key?(:key_expires_in)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class GoogleCloudApigeeV1AsyncQuery
        include Google::Apis::Core::Hashable
      
        # Creation time of the query
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # Error is set when query fails
        # Corresponds to the JSON property `error`
        # @return [String]
        attr_accessor :error
      
        # ExecutionTime is available only after the query is completed
        # Corresponds to the JSON property `executionTime`
        # @return [String]
        attr_accessor :execution_time
      
        # Asynchronous Query Name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains information like metrics, dimenstions etc
        # of the AsyncQuery
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetadata]
        attr_accessor :query_params
      
        # Asynchronous Report ID.
        # Corresponds to the JSON property `reportDefinitionId`
        # @return [String]
        attr_accessor :report_definition_id
      
        # Result is available only after the query is completed
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResult]
        attr_accessor :result
      
        # ResultFileSize is available only after the query is completed
        # Corresponds to the JSON property `resultFileSize`
        # @return [String]
        attr_accessor :result_file_size
      
        # ResultRows is available only after the query is completed
        # Corresponds to the JSON property `resultRows`
        # @return [Fixnum]
        attr_accessor :result_rows
      
        # Self link of the query
        # Example:
        # `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-
        # 318d0cb961bd`
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        # Query state could be "enqueued", "running", "completed",
        # "failed"
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Last updated timestamp for the query
        # Corresponds to the JSON property `updated`
        # @return [String]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] if args.key?(:created)
          @error = args[:error] if args.key?(:error)
          @execution_time = args[:execution_time] if args.key?(:execution_time)
          @name = args[:name] if args.key?(:name)
          @query_params = args[:query_params] if args.key?(:query_params)
          @report_definition_id = args[:report_definition_id] if args.key?(:report_definition_id)
          @result = args[:result] if args.key?(:result)
          @result_file_size = args[:result_file_size] if args.key?(:result_file_size)
          @result_rows = args[:result_rows] if args.key?(:result_rows)
          @self = args[:self] if args.key?(:self)
          @state = args[:state] if args.key?(:state)
          @updated = args[:updated] if args.key?(:updated)
        end
      end
      
      # 
      class GoogleCloudApigeeV1AsyncQueryResult
        include Google::Apis::Core::Hashable
      
        # Query result will be unaccessable after this time.
        # Corresponds to the JSON property `expires`
        # @return [String]
        attr_accessor :expires
      
        # Self link of the query results
        # Example:
        # `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-
        # 318d0cb961bd/result`
        # Corresponds to the JSON property `self`
        # @return [String]
        attr_accessor :self
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expires = args[:expires] if args.key?(:expires)
          @self = args[:self] if args.key?(:self)
        end
      end
      
      # Key-value pair to store extra metadata.
      class GoogleCloudApigeeV1Attribute
        include Google::Apis::Core::Hashable
      
        # API key of the attribute.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Value of the attribute.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Attributes
        include Google::Apis::Core::Hashable
      
        # List of attributes.
        # Corresponds to the JSON property `attribute`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attribute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute = args[:attribute] if args.key?(:attribute)
        end
      end
      
      # An X.509 certificate as defined in RFC 5280.
      class GoogleCloudApigeeV1CertInfo
        include Google::Apis::Core::Hashable
      
        # The X.509 basic constraints extension.
        # Corresponds to the JSON property `basicConstraints`
        # @return [String]
        attr_accessor :basic_constraints
      
        # The X.509 validity / notAfter in milliseconds since the epoch.
        # Corresponds to the JSON property `expiryDate`
        # @return [Fixnum]
        attr_accessor :expiry_date
      
        # "Yes" if certificate is valid, "No" if expired and "Not yet"
        # if not yet valid.
        # Corresponds to the JSON property `isValid`
        # @return [String]
        attr_accessor :is_valid
      
        # The X.509 issuer.
        # Corresponds to the JSON property `issuer`
        # @return [String]
        attr_accessor :issuer
      
        # The public key component of the X.509 subject public key info.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # The X.509 serial number.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # The X.509 signatureAlgorithm.
        # Corresponds to the JSON property `sigAlgName`
        # @return [String]
        attr_accessor :sig_alg_name
      
        # The X.509 subject.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        # The X.509 subject alternative names (SANs) extension.
        # Corresponds to the JSON property `subjectAlternativeNames`
        # @return [Array<String>]
        attr_accessor :subject_alternative_names
      
        # The X.509 validity / notBefore in milliseconds since the
        # epoch.
        # Corresponds to the JSON property `validFrom`
        # @return [Fixnum]
        attr_accessor :valid_from
      
        # The X.509 version.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_constraints = args[:basic_constraints] if args.key?(:basic_constraints)
          @expiry_date = args[:expiry_date] if args.key?(:expiry_date)
          @is_valid = args[:is_valid] if args.key?(:is_valid)
          @issuer = args[:issuer] if args.key?(:issuer)
          @public_key = args[:public_key] if args.key?(:public_key)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @sig_alg_name = args[:sig_alg_name] if args.key?(:sig_alg_name)
          @subject = args[:subject] if args.key?(:subject)
          @subject_alternative_names = args[:subject_alternative_names] if args.key?(:subject_alternative_names)
          @valid_from = args[:valid_from] if args.key?(:valid_from)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Certificate
        include Google::Apis::Core::Hashable
      
        # The chain of certificates under this name.
        # Corresponds to the JSON property `certInfo`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1CertInfo>]
        attr_accessor :cert_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_info = args[:cert_info] if args.key?(:cert_info)
        end
      end
      
      # 
      class GoogleCloudApigeeV1CommonNameConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `matchWildCards`
        # @return [Boolean]
        attr_accessor :match_wild_cards
        alias_method :match_wild_cards?, :match_wild_cards
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @match_wild_cards = args[:match_wild_cards] if args.key?(:match_wild_cards)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Version of the API proxy configuration schema. Currently, only 4.0 is
      # supported.
      class GoogleCloudApigeeV1ConfigVersion
        include Google::Apis::Core::Hashable
      
        # Major version of the API proxy configuration schema.
        # Corresponds to the JSON property `majorVersion`
        # @return [Fixnum]
        attr_accessor :major_version
      
        # Minor version of the API proxy configuration schema.
        # Corresponds to the JSON property `minorVersion`
        # @return [Fixnum]
        attr_accessor :minor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @major_version = args[:major_version] if args.key?(:major_version)
          @minor_version = args[:minor_version] if args.key?(:minor_version)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Credential
        include Google::Apis::Core::Hashable
      
        # List of API products this credential can be used for.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProductRef>]
        attr_accessor :api_products
      
        # List of attributes associated with this credential.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Consumer key.
        # Corresponds to the JSON property `consumerKey`
        # @return [String]
        attr_accessor :consumer_key
      
        # Secret key.
        # Corresponds to the JSON property `consumerSecret`
        # @return [String]
        attr_accessor :consumer_secret
      
        # Time the credential will expire in milliseconds since epoch.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        # Time the credential was issued in milliseconds since epoch.
        # Corresponds to the JSON property `issuedAt`
        # @return [Fixnum]
        attr_accessor :issued_at
      
        # List of scopes to apply to the app. Specified scopes must already
        # exist on the API product that you associate with the app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @attributes = args[:attributes] if args.key?(:attributes)
          @consumer_key = args[:consumer_key] if args.key?(:consumer_key)
          @consumer_secret = args[:consumer_secret] if args.key?(:consumer_secret)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
          @issued_at = args[:issued_at] if args.key?(:issued_at)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class GoogleCloudApigeeV1CustomReport
        include Google::Apis::Core::Hashable
      
        # This field contains the chart type for the report
        # Corresponds to the JSON property `chartType`
        # @return [String]
        attr_accessor :chart_type
      
        # Legacy field: not used. This field contains a list of comments associated
        # with custom report
        # Corresponds to the JSON property `comments`
        # @return [Array<String>]
        attr_accessor :comments
      
        # Output only. Unix time when the app was created
        # json key: createdAt
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # This contains the list of dimensions for the report
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # This is the display name for the report
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Environment name
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # This field contains the filter expression
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Legacy field: not used. Contains the from time for the report
        # Corresponds to the JSON property `fromTime`
        # @return [String]
        attr_accessor :from_time
      
        # Output only. Modified time of this entity as milliseconds since epoch.
        # json key: lastModifiedAt
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Output only. Last viewed time of this entity as milliseconds since epoch
        # Corresponds to the JSON property `lastViewedAt`
        # @return [Fixnum]
        attr_accessor :last_viewed_at
      
        # Legacy field: not used This field contains the limit for the result
        # retrieved
        # Corresponds to the JSON property `limit`
        # @return [String]
        attr_accessor :limit
      
        # Required. This contains the list of metrics
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReportMetric>]
        attr_accessor :metrics
      
        # Required. Unique identifier for the report
        # T his is a legacy field used to encode custom report unique id
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Legacy field: not used. This field contains the offset for the data
        # Corresponds to the JSON property `offset`
        # @return [String]
        attr_accessor :offset
      
        # Output only. Organization name
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # This field contains report properties such as ui metadata etc.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportProperty>]
        attr_accessor :properties
      
        # Legacy field: not used much. Contains the list of sort by columns
        # Corresponds to the JSON property `sortByCols`
        # @return [Array<String>]
        attr_accessor :sort_by_cols
      
        # Legacy field: not used much. Contains the sort order for the sort columns
        # Corresponds to the JSON property `sortOrder`
        # @return [String]
        attr_accessor :sort_order
      
        # Legacy field: not used. This field contains a list of tags associated with
        # custom report
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # This field contains the time unit of aggregation for the report
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        # Legacy field: not used. Contains the end time for the report
        # Corresponds to the JSON property `toTime`
        # @return [String]
        attr_accessor :to_time
      
        # Legacy field: not used. This field contains the top k parameter value
        # for restricting the result
        # Corresponds to the JSON property `topk`
        # @return [String]
        attr_accessor :topk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chart_type = args[:chart_type] if args.key?(:chart_type)
          @comments = args[:comments] if args.key?(:comments)
          @created_at = args[:created_at] if args.key?(:created_at)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environment = args[:environment] if args.key?(:environment)
          @filter = args[:filter] if args.key?(:filter)
          @from_time = args[:from_time] if args.key?(:from_time)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @last_viewed_at = args[:last_viewed_at] if args.key?(:last_viewed_at)
          @limit = args[:limit] if args.key?(:limit)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @offset = args[:offset] if args.key?(:offset)
          @organization = args[:organization] if args.key?(:organization)
          @properties = args[:properties] if args.key?(:properties)
          @sort_by_cols = args[:sort_by_cols] if args.key?(:sort_by_cols)
          @sort_order = args[:sort_order] if args.key?(:sort_order)
          @tags = args[:tags] if args.key?(:tags)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
          @to_time = args[:to_time] if args.key?(:to_time)
          @topk = args[:topk] if args.key?(:topk)
        end
      end
      
      # This encapsulates a metric property of the form sum(message_count)
      # where name is message_count and function is sum
      class GoogleCloudApigeeV1CustomReportMetric
        include Google::Apis::Core::Hashable
      
        # aggregate function
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # name of the metric
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] if args.key?(:function)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DebugMask
        include Google::Apis::Core::Hashable
      
        # List of JSON paths that specify the JSON elements to be filtered from JSON
        # payloads in error flows.
        # Corresponds to the JSON property `faultJSONPaths`
        # @return [Array<String>]
        attr_accessor :fault_json_paths
      
        # List of XPaths that specify the XML elements to be filtered from XML
        # payloads in error flows.
        # Corresponds to the JSON property `faultXPaths`
        # @return [Array<String>]
        attr_accessor :fault_x_paths
      
        # Name of the debug mask.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Map of namespaces to URIs.
        # Corresponds to the JSON property `namespaces`
        # @return [Hash<String,String>]
        attr_accessor :namespaces
      
        # List of JSON paths that specify the JSON elements to be filtered from JSON
        # request message payloads.
        # Corresponds to the JSON property `requestJSONPaths`
        # @return [Array<String>]
        attr_accessor :request_json_paths
      
        # List of XPaths that specify the XML elements to be filtered from XML
        # request message payloads.
        # Corresponds to the JSON property `requestXPaths`
        # @return [Array<String>]
        attr_accessor :request_x_paths
      
        # List of JSON paths that specify the JSON elements to be filtered from JSON
        # response message payloads.
        # Corresponds to the JSON property `responseJSONPaths`
        # @return [Array<String>]
        attr_accessor :response_json_paths
      
        # List of XPaths that specify the XML elements to be filtered from XML
        # response message payloads.
        # Corresponds to the JSON property `responseXPaths`
        # @return [Array<String>]
        attr_accessor :response_x_paths
      
        # List of variables that should be masked from the debug output.
        # Corresponds to the JSON property `variables`
        # @return [Array<String>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fault_json_paths = args[:fault_json_paths] if args.key?(:fault_json_paths)
          @fault_x_paths = args[:fault_x_paths] if args.key?(:fault_x_paths)
          @name = args[:name] if args.key?(:name)
          @namespaces = args[:namespaces] if args.key?(:namespaces)
          @request_json_paths = args[:request_json_paths] if args.key?(:request_json_paths)
          @request_x_paths = args[:request_x_paths] if args.key?(:request_x_paths)
          @response_json_paths = args[:response_json_paths] if args.key?(:response_json_paths)
          @response_x_paths = args[:response_x_paths] if args.key?(:response_x_paths)
          @variables = args[:variables] if args.key?(:variables)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DebugSession
        include Google::Apis::Core::Hashable
      
        # Optional. The number of request to be traced. Min = 1, Max = 15, Default
        # = 10.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Optional. A conditional statement which is evaluated against the request
        # message to determine if it should be traced. Syntax matches that of on
        # API Proxy bundle flow Condition.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # A unique ID for this DebugSession.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The time in seconds after which this DebugSession should end.
        # This value will override the value in query param, if both are provided.
        # Corresponds to the JSON property `timeout`
        # @return [Fixnum]
        attr_accessor :timeout
      
        # Optional. The maximum number of bytes captured from the response payload.
        # Min = 0, Max = 5120, Default = 5120.
        # Corresponds to the JSON property `tracesize`
        # @return [Fixnum]
        attr_accessor :tracesize
      
        # Optional. The length of time, in seconds, that this debug session is valid,
        # starting from when it's received in the control plane. Min = 1, Max = 15,
        # Default = 10.
        # Corresponds to the JSON property `validity`
        # @return [Fixnum]
        attr_accessor :validity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
          @timeout = args[:timeout] if args.key?(:timeout)
          @tracesize = args[:tracesize] if args.key?(:tracesize)
          @validity = args[:validity] if args.key?(:validity)
        end
      end
      
      # A transaction contains all of the debug information of the entire message
      # flow of an API call processed by the runtime plane. The information is
      # collected and recorded at critical points of the message flow in the runtime
      # apiproxy.
      class GoogleCloudApigeeV1DebugSessionTransaction
        include Google::Apis::Core::Hashable
      
        # Flag indicating whether a transaction is completed or not
        # Corresponds to the JSON property `completed`
        # @return [Boolean]
        attr_accessor :completed
        alias_method :completed?, :completed
      
        # List of debug data collected by runtime plane at various defined points in
        # the flow.
        # Corresponds to the JSON property `point`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Point>]
        attr_accessor :point
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed = args[:completed] if args.key?(:completed)
          @point = args[:point] if args.key?(:point)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DeleteCustomReportResponse
        include Google::Apis::Core::Hashable
      
        # The response contains only a message field.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Deployment
        include Google::Apis::Core::Hashable
      
        # API proxy.
        # Corresponds to the JSON property `apiProxy`
        # @return [String]
        attr_accessor :api_proxy
      
        # Base path for the deployment.
        # Corresponds to the JSON property `basePath`
        # @return [String]
        attr_accessor :base_path
      
        # Time the API proxy was marked `deployed` in the control plane in
        # millisconds since epoch.
        # Corresponds to the JSON property `deployStartTime`
        # @return [Fixnum]
        attr_accessor :deploy_start_time
      
        # Environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Status reported by runtime pods.
        # Corresponds to the JSON property `pods`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1PodStatus>]
        attr_accessor :pods
      
        # API proxy revision.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_proxy = args[:api_proxy] if args.key?(:api_proxy)
          @base_path = args[:base_path] if args.key?(:base_path)
          @deploy_start_time = args[:deploy_start_time] if args.key?(:deploy_start_time)
          @environment = args[:environment] if args.key?(:environment)
          @pods = args[:pods] if args.key?(:pods)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DeploymentConfig
        include Google::Apis::Core::Hashable
      
        # Additional key-value metadata about the deployment.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Base path where the application needs to be hosted. Default value is
        # assumed to be "/".
        # Corresponds to the JSON property `basePath`
        # @return [String]
        attr_accessor :base_path
      
        # The location of the proxy bundle, as a uri.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The name of the API or shared flow revision to be deployed. Must be of the
        # form 'organizations/`org`/apis/`api`/revisions/`rev`' or
        # 'organizations/`org`/sharedflows/`sf`/revisions/`rev`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @base_path = args[:base_path] if args.key?(:base_path)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Developer
        include Google::Apis::Core::Hashable
      
        # Access type.
        # Corresponds to the JSON property `accessType`
        # @return [String]
        attr_accessor :access_type
      
        # Developer app family.
        # Corresponds to the JSON property `appFamily`
        # @return [String]
        attr_accessor :app_family
      
        # List of apps associated with the developer.
        # Corresponds to the JSON property `apps`
        # @return [Array<String>]
        attr_accessor :apps
      
        # Optional. Developer attributes (name/value pairs). The custom attribute limit
        # is 18.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # List of companies associated with the developer.
        # Corresponds to the JSON property `companies`
        # @return [Array<String>]
        attr_accessor :companies
      
        # Output only. Time at which the developer was created in milliseconds
        # since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # ID of the developer.
        # **Note**: IDs are generated internally by Apigee and are not
        # guaranteed to stay the same over time.
        # Corresponds to the JSON property `developerId`
        # @return [String]
        attr_accessor :developer_id
      
        # Required. Email address of the developer. This value is used to uniquely
        # identify
        # the developer in Apigee hybrid.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. First name of the developer.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # Output only. Time at which the developer was last modified in
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Required. Last name of the developer.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # Output only. Name of the Apigee organization in which the developer resides.
        # Corresponds to the JSON property `organizationName`
        # @return [String]
        attr_accessor :organization_name
      
        # Output only. Status of the developer. Valid values are `active` and `inactive`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Required. User name of the developer. Not used by Apigee hybrid.
        # Corresponds to the JSON property `userName`
        # @return [String]
        attr_accessor :user_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_type = args[:access_type] if args.key?(:access_type)
          @app_family = args[:app_family] if args.key?(:app_family)
          @apps = args[:apps] if args.key?(:apps)
          @attributes = args[:attributes] if args.key?(:attributes)
          @companies = args[:companies] if args.key?(:companies)
          @created_at = args[:created_at] if args.key?(:created_at)
          @developer_id = args[:developer_id] if args.key?(:developer_id)
          @email = args[:email] if args.key?(:email)
          @first_name = args[:first_name] if args.key?(:first_name)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @last_name = args[:last_name] if args.key?(:last_name)
          @organization_name = args[:organization_name] if args.key?(:organization_name)
          @status = args[:status] if args.key?(:status)
          @user_name = args[:user_name] if args.key?(:user_name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DeveloperApp
        include Google::Apis::Core::Hashable
      
        # List of API products associated with the developer app.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<String>]
        attr_accessor :api_products
      
        # Developer app family.
        # Corresponds to the JSON property `appFamily`
        # @return [String]
        attr_accessor :app_family
      
        # ID of the developer app.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # List of attributes for the developer app.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Callback URL used by OAuth 2.0 authorization servers to communicate
        # authorization codes back to developer apps.
        # Corresponds to the JSON property `callbackUrl`
        # @return [String]
        attr_accessor :callback_url
      
        # Output only. Time the developer app was created in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Output only. Set of credentials for the developer app consisting of the
        # consumer key/secret pairs associated with the API products.
        # Corresponds to the JSON property `credentials`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Credential>]
        attr_accessor :credentials
      
        # ID of the developer.
        # Corresponds to the JSON property `developerId`
        # @return [String]
        attr_accessor :developer_id
      
        # Expiration time, in milliseconds, for the consumer key that
        # is generated for the developer app. If not set or left to the default
        # value of `-1`, the API key never expires.
        # The expiration time can't be updated after it is set.
        # Corresponds to the JSON property `keyExpiresIn`
        # @return [Fixnum]
        attr_accessor :key_expires_in
      
        # Output only. Time the developer app was modified in milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Name of the developer app.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Scopes to apply to the developer app. The specified scopes must
        # already exist for the API product that you associate with the developer
        # app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential. Valid values include `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @app_family = args[:app_family] if args.key?(:app_family)
          @app_id = args[:app_id] if args.key?(:app_id)
          @attributes = args[:attributes] if args.key?(:attributes)
          @callback_url = args[:callback_url] if args.key?(:callback_url)
          @created_at = args[:created_at] if args.key?(:created_at)
          @credentials = args[:credentials] if args.key?(:credentials)
          @developer_id = args[:developer_id] if args.key?(:developer_id)
          @key_expires_in = args[:key_expires_in] if args.key?(:key_expires_in)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class GoogleCloudApigeeV1DeveloperAppKey
        include Google::Apis::Core::Hashable
      
        # List of API products for which the credential can be used.
        # Corresponds to the JSON property `apiProducts`
        # @return [Array<Object>]
        attr_accessor :api_products
      
        # List of attributes associated with the credential.
        # Corresponds to the JSON property `attributes`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :attributes
      
        # Consumer key.
        # Corresponds to the JSON property `consumerKey`
        # @return [String]
        attr_accessor :consumer_key
      
        # Secret key.
        # Corresponds to the JSON property `consumerSecret`
        # @return [String]
        attr_accessor :consumer_secret
      
        # Time the developer app expires in milliseconds since epoch.
        # Corresponds to the JSON property `expiresAt`
        # @return [Fixnum]
        attr_accessor :expires_at
      
        # Time the developer app was created in milliseconds since epoch.
        # Corresponds to the JSON property `issuedAt`
        # @return [Fixnum]
        attr_accessor :issued_at
      
        # Scopes to apply to the app. The specified scope names must already
        # be defined for the API product that you associate with the app.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        # Status of the credential. Valid values include `approved` or `revoked`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_products = args[:api_products] if args.key?(:api_products)
          @attributes = args[:attributes] if args.key?(:attributes)
          @consumer_key = args[:consumer_key] if args.key?(:consumer_key)
          @consumer_secret = args[:consumer_secret] if args.key?(:consumer_secret)
          @expires_at = args[:expires_at] if args.key?(:expires_at)
          @issued_at = args[:issued_at] if args.key?(:issued_at)
          @scopes = args[:scopes] if args.key?(:scopes)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # This message type encapsulates a metric grouped by dimension
      class GoogleCloudApigeeV1DimensionMetric
        include Google::Apis::Core::Hashable
      
        # This field contains a list of metrics
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric>]
        attr_accessor :metrics
      
        # This field contains the name of the dimension
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata common to many entities in this API.
      class GoogleCloudApigeeV1EntityMetadata
        include Google::Apis::Core::Hashable
      
        # Time at which the API proxy was created, in milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Time at which the API proxy was most recently modified, in milliseconds
        # since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # The type of entity described
        # Corresponds to the JSON property `subType`
        # @return [String]
        attr_accessor :sub_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @sub_type = args[:sub_type] if args.key?(:sub_type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Environment
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this environment as milliseconds since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Optional. Description of the environment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Display name for this environment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Last modification time of this environment as milliseconds
        # since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Required. Name of the environment. Values must match the
        # regular expression `^[.\\p`Alnum`-_]`1,255`$`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message for compatibility with legacy Edge specification for Java Properties
        # object in JSON.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_at = args[:created_at] if args.key?(:created_at)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # 
      class GoogleCloudApigeeV1EnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # The time at which this environment config was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Debug mask that applies to all deployments in the environment.
        # Corresponds to the JSON property `debugMask`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask]
        attr_accessor :debug_mask
      
        # A list of deployments in the environment
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentConfig>]
        attr_accessor :deployments
      
        # Feature flags inherited from the org and environment parents.
        # Corresponds to the JSON property `featureFlags`
        # @return [Hash<String,String>]
        attr_accessor :feature_flags
      
        # A list of flow hooks in the environment.
        # Corresponds to the JSON property `flowhooks`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHookConfig>]
        attr_accessor :flowhooks
      
        # A list of keystores in the environment.
        # Corresponds to the JSON property `keystores`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeystoreConfig>]
        attr_accessor :keystores
      
        # The name of the environment config. Must be of the form
        # 'organizations/`org`/environments/`env`/configs/`config_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This field can be used by the control plane to add some context
        # information about itself. This information could help detect the source of
        # the document during diagnostics and debugging.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Name of the pubsub topic for this environment.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        # A list of resource references in the environment.
        # Corresponds to the JSON property `resourceReferences`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReferenceConfig>]
        attr_accessor :resource_references
      
        # A list of resource versions in the environment.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceConfig>]
        attr_accessor :resources
      
        # A sequence number that defines an ordering on environment configs. No two
        # configs under an environment will ever have the same sequence number.
        # A higher sequence number means that the config was deployed more
        # recently than one with a lower sequence number.
        # Corresponds to the JSON property `sequenceNumber`
        # @return [Fixnum]
        attr_accessor :sequence_number
      
        # A list of target servers in the environment. Disabled target servers are
        # not included.
        # Corresponds to the JSON property `targets`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServerConfig>]
        attr_accessor :targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @debug_mask = args[:debug_mask] if args.key?(:debug_mask)
          @deployments = args[:deployments] if args.key?(:deployments)
          @feature_flags = args[:feature_flags] if args.key?(:feature_flags)
          @flowhooks = args[:flowhooks] if args.key?(:flowhooks)
          @keystores = args[:keystores] if args.key?(:keystores)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @resource_references = args[:resource_references] if args.key?(:resource_references)
          @resources = args[:resources] if args.key?(:resources)
          @sequence_number = args[:sequence_number] if args.key?(:sequence_number)
          @targets = args[:targets] if args.key?(:targets)
        end
      end
      
      # 
      class GoogleCloudApigeeV1FlowHook
        include Google::Apis::Core::Hashable
      
        # Optional. Flag that specifies whether execution should continue if the flow
        # hook
        # throws an exception. Set to `true` to continue execution. Set to
        # `false` to stop execution if the flow hook throws an exception.Defaults
        # to `true`.
        # Corresponds to the JSON property `continueOnError`
        # @return [Boolean]
        attr_accessor :continue_on_error
        alias_method :continue_on_error?, :continue_on_error
      
        # Description of the flow hook.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Where in the API call flow the flow hook is invoked. Must be one
        # of
        # `PreProxyFlowHook`, `PostProxyFlowHook`, `PreTargetFlowHook`, or
        # `PostTargetFlowHook`.
        # Corresponds to the JSON property `flowHookPoint`
        # @return [String]
        attr_accessor :flow_hook_point
      
        # Shared flow attached to this flow hook, or empty if there is none attached.
        # Corresponds to the JSON property `sharedFlow`
        # @return [String]
        attr_accessor :shared_flow
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue_on_error = args[:continue_on_error] if args.key?(:continue_on_error)
          @description = args[:description] if args.key?(:description)
          @flow_hook_point = args[:flow_hook_point] if args.key?(:flow_hook_point)
          @shared_flow = args[:shared_flow] if args.key?(:shared_flow)
        end
      end
      
      # 
      class GoogleCloudApigeeV1FlowHookConfig
        include Google::Apis::Core::Hashable
      
        # Should the flow abort after an error in the flow hook.
        # Should default to true if unset.
        # Corresponds to the JSON property `continueOnError`
        # @return [Boolean]
        attr_accessor :continue_on_error
        alias_method :continue_on_error?, :continue_on_error
      
        # The name of the flow hook. Must be of the form
        # 'organizations/`org`/environments/`env`/flowhooks/`point`''.
        # Known points are PreProxyFlowHook, PostProxyFlowHook, PreTargetFlowHook,
        # and PostTargetFlowHook
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the shared flow to invoke. Must be of the form
        # 'organizations/`org`/sharedflows/`sharedflow`'.
        # Corresponds to the JSON property `sharedFlowName`
        # @return [String]
        attr_accessor :shared_flow_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continue_on_error = args[:continue_on_error] if args.key?(:continue_on_error)
          @name = args[:name] if args.key?(:name)
          @shared_flow_name = args[:shared_flow_name] if args.key?(:shared_flow_name)
        end
      end
      
      # Request for
      # GetSyncAuthorization.
      class GoogleCloudApigeeV1GetSyncAuthorizationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudApigeeV1KeyAliasReference
        include Google::Apis::Core::Hashable
      
        # The alias id. Must exist in the keystore referred to by reference.
        # Corresponds to the JSON property `aliasId`
        # @return [String]
        attr_accessor :alias_id
      
        # The reference name. Must be of the form:
        # organizations/`org`/environments/`env`/references/`ref`.
        # Corresponds to the JSON property `reference`
        # @return [String]
        attr_accessor :reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias_id = args[:alias_id] if args.key?(:alias_id)
          @reference = args[:reference] if args.key?(:reference)
        end
      end
      
      # A collection of key, value string pairs
      class GoogleCloudApigeeV1KeyValueMap
        include Google::Apis::Core::Hashable
      
        # Optional. If `true` entry values will be encrypted.
        # Corresponds to the JSON property `encrypted`
        # @return [Boolean]
        attr_accessor :encrypted
        alias_method :encrypted?, :encrypted
      
        # Required. The id of the key value map.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encrypted = args[:encrypted] if args.key?(:encrypted)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A datastore for Certificates and Aliases
      class GoogleCloudApigeeV1Keystore
        include Google::Apis::Core::Hashable
      
        # Output only. The aliases in this keystore.
        # Corresponds to the JSON property `aliases`
        # @return [Array<String>]
        attr_accessor :aliases
      
        # Required. The resource ID for this keystore.  Values must match the
        # regular expression `[\w[:space:]-.]`1,255``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] if args.key?(:aliases)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1KeystoreConfig
        include Google::Apis::Core::Hashable
      
        # Aliases in the keystore.
        # Corresponds to the JSON property `aliases`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1AliasRevisionConfig>]
        attr_accessor :aliases
      
        # The resource name. Must be of the
        # form:
        # 'organizations/`org`/environments/`env`/keystores/`keystore`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aliases = args[:aliases] if args.key?(:aliases)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListApiProductsResponse
        include Google::Apis::Core::Hashable
      
        # Lists all API product names defined for an organization.
        # Corresponds to the JSON property `apiProduct`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct>]
        attr_accessor :api_product
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_product = args[:api_product] if args.key?(:api_product)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListApiProxiesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `proxies`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy>]
        attr_accessor :proxies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proxies = args[:proxies] if args.key?(:proxies)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListAppsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `app`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1App>]
        attr_accessor :app
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app = args[:app] if args.key?(:app)
        end
      end
      
      # The response for ListAsyncQueries
      class GoogleCloudApigeeV1ListAsyncQueriesResponse
        include Google::Apis::Core::Hashable
      
        # The asynchronous queries belong to requested organization and environment
        # Corresponds to the JSON property `queries`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery>]
        attr_accessor :queries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @queries = args[:queries] if args.key?(:queries)
        end
      end
      
      # This message encapsulates a list of custom report definitions
      class GoogleCloudApigeeV1ListCustomReportsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `qualifier`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport>]
        attr_accessor :qualifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qualifier = args[:qualifier] if args.key?(:qualifier)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListDebugSessionsResponse
        include Google::Apis::Core::Hashable
      
        # Session info that includes debug session ID and the first transaction
        # creation timestamp.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Session>]
        attr_accessor :sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sessions = args[:sessions] if args.key?(:sessions)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # List of deployments.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment>]
        attr_accessor :deployments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployments = args[:deployments] if args.key?(:deployments)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListDeveloperAppsResponse
        include Google::Apis::Core::Hashable
      
        # List of developer apps and their credentials.
        # Corresponds to the JSON property `app`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp>]
        attr_accessor :app
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app = args[:app] if args.key?(:app)
        end
      end
      
      # Response for
      # ListEnvironmentResources
      class GoogleCloudApigeeV1ListEnvironmentResourcesResponse
        include Google::Apis::Core::Hashable
      
        # List of resources files.
        # Corresponds to the JSON property `resourceFile`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile>]
        attr_accessor :resource_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_file = args[:resource_file] if args.key?(:resource_file)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListHybridIssuersResponse
        include Google::Apis::Core::Hashable
      
        # Lists of hybrid services and its trusted issuer email ids.
        # Corresponds to the JSON property `issuers`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ServiceIssuersMapping>]
        attr_accessor :issuers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issuers = args[:issuers] if args.key?(:issuers)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListOfDevelopersResponse
        include Google::Apis::Core::Hashable
      
        # List of developers.
        # Corresponds to the JSON property `developer`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer>]
        attr_accessor :developer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @developer = args[:developer] if args.key?(:developer)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListOrganizationsResponse
        include Google::Apis::Core::Hashable
      
        # List of Apigee organizations and associated GCP projects.
        # Corresponds to the JSON property `organizations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping>]
        attr_accessor :organizations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @organizations = args[:organizations] if args.key?(:organizations)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ListSharedFlowsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `sharedFlows`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow>]
        attr_accessor :shared_flows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shared_flows = args[:shared_flows] if args.key?(:shared_flows)
        end
      end
      
      # This message type encapsulates additional information about query execution
      class GoogleCloudApigeeV1Metadata
        include Google::Apis::Core::Hashable
      
        # List of error messages as strings
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # List of additional information such as data source, if result was
        # truncated etc.
        # E.g
        # "notices": [
        # "Source:Postgres",
        # "PG Host:uappg0rw.e2e.apigeeks.net",
        # "query served by:4b64601e-40de-4eb1-bfb9-eeee7ac929ed",
        # "Table used: edge.api.uapgroup2.agg_api"
        # ]
        # Corresponds to the JSON property `notices`
        # @return [Array<String>]
        attr_accessor :notices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @notices = args[:notices] if args.key?(:notices)
        end
      end
      
      # This message type encapsulates the metric data point
      # Example
      # `
      # "name": "sum(message_count)",
      # "values" : [ `
      # "timestamp": 1549004400000,
      # "value": "39.0"
      # `,
      # `
      # "timestamp" : 1548997200000,
      # "value" : "0.0"
      # ` ]
      # `
      # or
      # `
      # "name": "sum(message_count)",
      # "values" : ["39.0"]
      # `
      class GoogleCloudApigeeV1Metric
        include Google::Apis::Core::Hashable
      
        # This field contains the metric name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of metric values
        # Possible value format
        # "values":["39.0"] or
        # "values":[ ` "value": "39.0", "timestamp": 1232434354` ]
        # Corresponds to the JSON property `values`
        # @return [Array<Object>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Metadata describing an Operation.
      class GoogleCloudApigeeV1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Name of the resource for which the operation is operating on.
        # Corresponds to the JSON property `targetResourceName`
        # @return [String]
        attr_accessor :target_resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @state = args[:state] if args.key?(:state)
          @target_resource_name = args[:target_resource_name] if args.key?(:target_resource_name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1OptimizedStats
        include Google::Apis::Core::Hashable
      
        # This message type encapsulates a response format for Js Optimized Scenario
        # Corresponds to the JSON property `Response`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsResponse]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class GoogleCloudApigeeV1OptimizedStatsNode
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `data`
        # @return [Array<Object>]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # This message type encapsulates a response format for Js Optimized Scenario
      class GoogleCloudApigeeV1OptimizedStatsResponse
        include Google::Apis::Core::Hashable
      
        # This field contains a list of time unit values. Time unit refers to
        # an epoch timestamp value.
        # Corresponds to the JSON property `TimeUnit`
        # @return [Array<Fixnum>]
        attr_accessor :time_unit
      
        # This message type encapsulates additional information about query execution
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata]
        attr_accessor :meta_data
      
        # This ia a boolean field to indicate if the results were truncated
        # based on the limit parameter.
        # Corresponds to the JSON property `resultTruncated`
        # @return [Boolean]
        attr_accessor :result_truncated
        alias_method :result_truncated?, :result_truncated
      
        # This field contains a stats results
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStatsNode]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
          @result_truncated = args[:result_truncated] if args.key?(:result_truncated)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Organization
        include Google::Apis::Core::Hashable
      
        # Required. Primary GCP region for analytics data storage. For valid values, see
        # [Create an
        # organization](https://docs.apigee.com/hybrid/latest/precog-provision).
        # Corresponds to the JSON property `analyticsRegion`
        # @return [String]
        attr_accessor :analytics_region
      
        # Not used by Apigee.
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # Output only. Time that the Apigee organization was created in milliseconds
        # since epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # Not used by Apigee.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # Description of the Apigee organization.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. List of environments in the Apigee organization.
        # Corresponds to the JSON property `environments`
        # @return [Array<String>]
        attr_accessor :environments
      
        # Output only. Time that the Apigee organization was last modified in
        # milliseconds
        # since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # Output only. Name of the Apigee organization.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message for compatibility with legacy Edge specification for Java Properties
        # object in JSON.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties]
        attr_accessor :properties
      
        # Output only. Runtime type of the Apigee organization based on the Apigee
        # subscription
        # purchased.
        # Corresponds to the JSON property `runtimeType`
        # @return [String]
        attr_accessor :runtime_type
      
        # Output only. Subscription type of the Apigee organization. Valid values
        # include trial
        # (free, limited, and for evaluation purposes only) or paid (full
        # subscription has been purchased). See
        # [Apigee pricing](https://cloud.google.com/apigee/pricing/).
        # Corresponds to the JSON property `subscriptionType`
        # @return [String]
        attr_accessor :subscription_type
      
        # Not used by Apigee.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_region = args[:analytics_region] if args.key?(:analytics_region)
          @attributes = args[:attributes] if args.key?(:attributes)
          @created_at = args[:created_at] if args.key?(:created_at)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @environments = args[:environments] if args.key?(:environments)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
          @runtime_type = args[:runtime_type] if args.key?(:runtime_type)
          @subscription_type = args[:subscription_type] if args.key?(:subscription_type)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1OrganizationProjectMapping
        include Google::Apis::Core::Hashable
      
        # Name of the Apigee organization.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # List of GCP projects associated with the Apigee organization.
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @organization = args[:organization] if args.key?(:organization)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
        end
      end
      
      # 
      class GoogleCloudApigeeV1PodStatus
        include Google::Apis::Core::Hashable
      
        # Version of the application running in the pod.
        # Corresponds to the JSON property `appVersion`
        # @return [String]
        attr_accessor :app_version
      
        # Status of the deployment. Valid values
        # include:
        # - `deployed`: Successful.
        # - `error` : Failed.
        # - `pending` : Pod has not yet reported on the deployment.
        # Corresponds to the JSON property `deploymentStatus`
        # @return [String]
        attr_accessor :deployment_status
      
        # Time the deployment status was reported in milliseconds since epoch.
        # Corresponds to the JSON property `deploymentStatusTime`
        # @return [Fixnum]
        attr_accessor :deployment_status_time
      
        # Time the proxy was deployed in milliseconds since epoch.
        # Corresponds to the JSON property `deploymentTime`
        # @return [Fixnum]
        attr_accessor :deployment_time
      
        # Name of the pod which is reporting the status.
        # Corresponds to the JSON property `podName`
        # @return [String]
        attr_accessor :pod_name
      
        # Overall status of the pod (not this specific deployment). Valid values
        # include:
        # - `active`: Up to date.
        # - `stale` : Recently out of date.
        # Pods that have not reported status in a
        # long time are excluded from the output.
        # Corresponds to the JSON property `podStatus`
        # @return [String]
        attr_accessor :pod_status
      
        # Time the pod status was reported in milliseconds since epoch.
        # Corresponds to the JSON property `podStatusTime`
        # @return [Fixnum]
        attr_accessor :pod_status_time
      
        # Code associated with the deployment status.
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        # Human-readable message associated with the status code.
        # Corresponds to the JSON property `statusCodeDetails`
        # @return [String]
        attr_accessor :status_code_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_version = args[:app_version] if args.key?(:app_version)
          @deployment_status = args[:deployment_status] if args.key?(:deployment_status)
          @deployment_status_time = args[:deployment_status_time] if args.key?(:deployment_status_time)
          @deployment_time = args[:deployment_time] if args.key?(:deployment_time)
          @pod_name = args[:pod_name] if args.key?(:pod_name)
          @pod_status = args[:pod_status] if args.key?(:pod_status)
          @pod_status_time = args[:pod_status_time] if args.key?(:pod_status_time)
          @status_code = args[:status_code] if args.key?(:status_code)
          @status_code_details = args[:status_code_details] if args.key?(:status_code_details)
        end
      end
      
      # Point is a group of information collected by runtime plane at critical points
      # of the message flow of the processed API request.
      # This is a list of supported point IDs, categorized to three major buckets.
      # For each category, debug points that we are currently supporting are listed
      # below:
      # - Flow status debug points:
      # StateChange
      # FlowInfo
      # Condition
      # Execution
      # DebugMask
      # Error
      # - Flow control debug points:
      # FlowCallout
      # Paused
      # Resumed
      # FlowReturn
      # BreakFlow
      # Error
      # - Runtime debug points:
      # ScriptExecutor
      # FlowCalloutStepDefinition
      # CustomTarget
      # StepDefinition
      # Oauth2ServicePoint
      # RaiseFault
      # NodeJS
      # The detail information of the given debug point is stored in a list of
      # results.
      class GoogleCloudApigeeV1Point
        include Google::Apis::Core::Hashable
      
        # Name of a step in the transaction.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # List of results extracted from a given debug point.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Result>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Message for compatibility with legacy Edge specification for Java Properties
      # object in JSON.
      class GoogleCloudApigeeV1Properties
        include Google::Apis::Core::Hashable
      
        # List of all properties in the object
        # Corresponds to the JSON property `property`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property>]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A single property entry in the Properties message.
      class GoogleCloudApigeeV1Property
        include Google::Apis::Core::Hashable
      
        # The property key
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The property value
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudApigeeV1Query
        include Google::Apis::Core::Hashable
      
        # Delimiter used in the CSV file, if `outputFormat` is set
        # to `csv`. Defaults to the `,` (comma) character.
        # Supported delimiter characters include comma (`,`), pipe (`|`),
        # and tab (`\t`).
        # Corresponds to the JSON property `csvDelimiter`
        # @return [String]
        attr_accessor :csv_delimiter
      
        # A list of dimensions
        # https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Boolean expression that can be used to filter data.
        # Filter expressions can be combined using AND/OR terms and should be fully
        # parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and
        # filters reference
        # https://docs.apigee.com/api-platform/analytics/analytics-reference
        # for more information on the fields available to filter
        # on. For more information on the tokens that you use to build filter
        # expressions, see Filter expression syntax.
        # https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-
        # expression-syntax
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Time unit used to group the result set.
        # Valid values include: second, minute, hour, day, week, or month.
        # If a query includes groupByTimeUnit, then the result is an aggregation
        # based on the specified time unit and the resultant timestamp does not
        # include milliseconds precision.
        # If a query omits groupByTimeUnit, then the resultant timestamp includes
        # milliseconds precision.
        # Corresponds to the JSON property `groupByTimeUnit`
        # @return [String]
        attr_accessor :group_by_time_unit
      
        # Maximum number of rows that can be returned in the result.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # A list of Metrics
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryMetric>]
        attr_accessor :metrics
      
        # Asynchronous Query Name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Valid values include: `csv` or `json`. Defaults to `json`.
        # Note: Configure the delimiter for CSV output using the csvDelimiter
        # property.
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Asynchronous Report ID.
        # Corresponds to the JSON property `reportDefinitionId`
        # @return [String]
        attr_accessor :report_definition_id
      
        # Required. Time range for the query.
        # Can use the following predefined strings to specify the time range:
        # `last60minutes`
        # `last24hours`
        # `last7days`
        # Or, specify the timeRange as a structure describing start and end
        # timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ.
        # Example:
        # "timeRange": `
        # "start": "2018-07-29T00:13:00Z",
        # "end": "2018-08-01T00:18:00Z"
        # `
        # Corresponds to the JSON property `timeRange`
        # @return [Object]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_delimiter = args[:csv_delimiter] if args.key?(:csv_delimiter)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @group_by_time_unit = args[:group_by_time_unit] if args.key?(:group_by_time_unit)
          @limit = args[:limit] if args.key?(:limit)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @output_format = args[:output_format] if args.key?(:output_format)
          @report_definition_id = args[:report_definition_id] if args.key?(:report_definition_id)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # 
      class GoogleCloudApigeeV1QueryMetadata
        include Google::Apis::Core::Hashable
      
        # Dimensions of the AsyncQuery.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # End timestamp of the query range.
        # Corresponds to the JSON property `endTimestamp`
        # @return [String]
        attr_accessor :end_timestamp
      
        # Metrics of the AsyncQuery.
        # Example: ["name:message_count,func:sum,alias:sum_message_count"]
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Output format.
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Start timestamp of the query range.
        # Corresponds to the JSON property `startTimestamp`
        # @return [String]
        attr_accessor :start_timestamp
      
        # Query GroupBy time unit.
        # Corresponds to the JSON property `timeUnit`
        # @return [String]
        attr_accessor :time_unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @end_timestamp = args[:end_timestamp] if args.key?(:end_timestamp)
          @metrics = args[:metrics] if args.key?(:metrics)
          @output_format = args[:output_format] if args.key?(:output_format)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
          @time_unit = args[:time_unit] if args.key?(:time_unit)
        end
      end
      
      # More info about Metric:
      # https://docs.apigee.com/api-platform/analytics/analytics-reference#metrics
      class GoogleCloudApigeeV1QueryMetric
        include Google::Apis::Core::Hashable
      
        # Alias for the metric. Alias will be used to replace metric name
        # in query results.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Aggregation function: avg, min, max, or sum
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Required. Metric name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # One of `+`, `-`, `/`, `%`, `*`
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # Operand value should be provided when operator is set.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @function = args[:function] if args.key?(:function)
          @name = args[:name] if args.key?(:name)
          @operator = args[:operator] if args.key?(:operator)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A Reference configuration. References must refer to a keystore
      # that also exists in the parent environment.
      class GoogleCloudApigeeV1Reference
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description of this reference.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The resource id of this reference. Values must match the
        # regular expression [\w\s\-.]+.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The id of the resource to which this reference refers.
        # Must be the id of a resource that exists in the parent environment and is
        # of the given resource_type.
        # Corresponds to the JSON property `refers`
        # @return [String]
        attr_accessor :refers
      
        # The type of resource referred to by this reference. Valid values
        # are 'KeyStore' or 'TrustStore'.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @refers = args[:refers] if args.key?(:refers)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ReferenceConfig
        include Google::Apis::Core::Hashable
      
        # The name of the reference. Must be of the form
        # 'organizations/`org`/environments/`env`/references/`ref`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the referred resource. Only references to keystore resources
        # are supported. Must be of the form
        # 'organizations/`org`/environments/`env`/keystores/`ks`'.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ReportProperty
        include Google::Apis::Core::Hashable
      
        # name of the property
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # property values
        # Corresponds to the JSON property `value`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ResourceConfig
        include Google::Apis::Core::Hashable
      
        # The location of the resource as a URI.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The resource name. Only environment-scoped resource files are supported.
        # Must be of the form
        # 'organizations/`org`/environments/`env`/resourcefiles/`type`/`file`/revisions/`
        # rev`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata about a resource file.
      class GoogleCloudApigeeV1ResourceFile
        include Google::Apis::Core::Hashable
      
        # ID of the resource file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource file type. `` resource_file_type ``
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # List of resource files.
      class GoogleCloudApigeeV1ResourceFiles
        include Google::Apis::Core::Hashable
      
        # List of resource files.
        # Corresponds to the JSON property `resourceFile`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile>]
        attr_accessor :resource_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_file = args[:resource_file] if args.key?(:resource_file)
        end
      end
      
      # Result is short for "action result", could be different types identified by
      # "action_result" field. Supported types:
      # 1. DebugInfo : generic debug info collected by runtime recorded as a list of
      # properties. For example, the contents could be virtual host info, state
      # change result, or execution metadata. Required fields : properties, timestamp
      # 2. RequestMessage: information of a http request. Contains headers, request
      # URI and http methods type.Required fields : headers, uri, verb
      # 3. ResponseMessage: information of a http response. Contains headers, reason
      # phrase and http status code. Required fields : headers, reasonPhrase,
      # statusCode
      # 4. ErrorMessage: information of a http error message. Contains detail error
      # message, reason phrase and status code. Required fields : content, headers,
      # reasonPhrase, statusCode
      # 5. VariableAccess: a list of variable access actions, can be Get, Set and
      # Remove. Required fields : accessList
      class GoogleCloudApigeeV1Result
        include Google::Apis::Core::Hashable
      
        # Type of the action result. Can be one of the five: DebugInfo,
        # RequestMessage, ResponseMessage, ErrorMessage, VariableAccess
        # Corresponds to the JSON property `ActionResult`
        # @return [String]
        attr_accessor :action_result
      
        # A list of variable access actions agaist the api proxy.
        # Supported values: Get, Set, Remove.
        # Corresponds to the JSON property `accessList`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Access>]
        attr_accessor :access_list
      
        # Error message content. for example,
        # "content" : "`\"fault\":`\"faultstring\":\"API timed
        # out\",\"detail\":`\"errorcode\":\"flow.APITimedOut\"```"
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # A list of HTTP headers.
        # for example,
        # '"headers" : [ `
        # "name" : "Content-Length",
        # "value" : "83"
        # `, `
        # "name" : "Content-Type",
        # "value" : "application/json"
        # ` ]'
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Property>]
        attr_accessor :headers
      
        # Message for compatibility with legacy Edge specification for Java Properties
        # object in JSON.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Properties]
        attr_accessor :properties
      
        # HTTP response phrase
        # Corresponds to the JSON property `reasonPhrase`
        # @return [String]
        attr_accessor :reason_phrase
      
        # HTTP response code
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        # Timestamp of when the result is recorded. Its format is dd-mm-yy
        # hh:mm:ss:xxx. For example, `"timestamp" : "12-08-19 00:31:59:960"`
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The relative path of the api proxy.
        # for example, `"uRI" : "/iloveapis"`
        # Corresponds to the JSON property `uRI`
        # @return [String]
        attr_accessor :u_ri
      
        # HTTP method verb
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_result = args[:action_result] if args.key?(:action_result)
          @access_list = args[:access_list] if args.key?(:access_list)
          @content = args[:content] if args.key?(:content)
          @headers = args[:headers] if args.key?(:headers)
          @properties = args[:properties] if args.key?(:properties)
          @reason_phrase = args[:reason_phrase] if args.key?(:reason_phrase)
          @status_code = args[:status_code] if args.key?(:status_code)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @u_ri = args[:u_ri] if args.key?(:u_ri)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Response for Schema call
      class GoogleCloudApigeeV1Schema
        include Google::Apis::Core::Hashable
      
        # List of schema fiels grouped as dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement>]
        attr_accessor :dimensions
      
        # Additional metadata associated with schema. This is
        # a legacy field and usually consists of an empty array of strings.
        # Corresponds to the JSON property `meta`
        # @return [Array<String>]
        attr_accessor :meta
      
        # List of schema fields grouped as dimensions. These are fields
        # that can be used with an aggregate function such as sum, avg, min, max.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaElement>]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @meta = args[:meta] if args.key?(:meta)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # Message type for the schema element
      class GoogleCloudApigeeV1SchemaSchemaElement
        include Google::Apis::Core::Hashable
      
        # Name of the field
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message type for schema property
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SchemaSchemaProperty]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Message type for schema property
      class GoogleCloudApigeeV1SchemaSchemaProperty
        include Google::Apis::Core::Hashable
      
        # Creation time of the field
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Custom is a flag signifying if the field was provided as
        # part of the standard dataset or a custom field created by the customer
        # Corresponds to the JSON property `custom`
        # @return [String]
        attr_accessor :custom
      
        # Data type of the field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom = args[:custom] if args.key?(:custom)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudApigeeV1ServiceIssuersMapping
        include Google::Apis::Core::Hashable
      
        # List of trusted issuer email ids.
        # Corresponds to the JSON property `emailIds`
        # @return [Array<String>]
        attr_accessor :email_ids
      
        # String indicating the Apigee service name.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_ids = args[:email_ids] if args.key?(:email_ids)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Session carries the debug session id and its creation time.
      class GoogleCloudApigeeV1Session
        include Google::Apis::Core::Hashable
      
        # The debug session ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The first transaction creation timestamp in millisecond, recoreded by UAP.
        # Corresponds to the JSON property `timestampMs`
        # @return [Fixnum]
        attr_accessor :timestamp_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @timestamp_ms = args[:timestamp_ms] if args.key?(:timestamp_ms)
        end
      end
      
      # The metadata describing a shared flow
      class GoogleCloudApigeeV1SharedFlow
        include Google::Apis::Core::Hashable
      
        # The id of the most recently created revision for this shared flow.
        # Corresponds to the JSON property `latestRevisionId`
        # @return [String]
        attr_accessor :latest_revision_id
      
        # Metadata common to many entities in this API.
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EntityMetadata]
        attr_accessor :meta_data
      
        # The ID of the shared flow.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of revisions of this shared flow.
        # Corresponds to the JSON property `revision`
        # @return [Array<String>]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_revision_id = args[:latest_revision_id] if args.key?(:latest_revision_id)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
          @name = args[:name] if args.key?(:name)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # The metadata describing a shared flow revision.
      class GoogleCloudApigeeV1SharedFlowRevision
        include Google::Apis::Core::Hashable
      
        # Version of the API proxy configuration schema. Currently, only 4.0 is
        # supported.
        # Corresponds to the JSON property `configurationVersion`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ConfigVersion]
        attr_accessor :configuration_version
      
        # A textual description of the shared flow revision.
        # Corresponds to the JSON property `contextInfo`
        # @return [String]
        attr_accessor :context_info
      
        # Time at which this shared flow revision was created, in milliseconds since
        # epoch.
        # Corresponds to the JSON property `createdAt`
        # @return [Fixnum]
        attr_accessor :created_at
      
        # The human readable name of this shared flow.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A Key-Value map of metadata about this shared flow revision.
        # Corresponds to the JSON property `entityMetaDataAsProperties`
        # @return [Hash<String,String>]
        attr_accessor :entity_meta_data_as_properties
      
        # Time at which this shared flow revision was most recently modified, in
        # milliseconds since epoch.
        # Corresponds to the JSON property `lastModifiedAt`
        # @return [Fixnum]
        attr_accessor :last_modified_at
      
        # The resource ID of the parent shared flow.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of policy names included in this shared flow revision.
        # Corresponds to the JSON property `policies`
        # @return [Array<String>]
        attr_accessor :policies
      
        # List of resource files.
        # Corresponds to the JSON property `resourceFiles`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFiles]
        attr_accessor :resource_files
      
        # A list of the resources included in this shared flow revision formatted as
        # "`type`://`name`".
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # The resource ID of this revision.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        # A list of the shared flow names included in this shared flow revision.
        # Corresponds to the JSON property `sharedFlows`
        # @return [Array<String>]
        attr_accessor :shared_flows
      
        # The string "Application"
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration_version = args[:configuration_version] if args.key?(:configuration_version)
          @context_info = args[:context_info] if args.key?(:context_info)
          @created_at = args[:created_at] if args.key?(:created_at)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_meta_data_as_properties = args[:entity_meta_data_as_properties] if args.key?(:entity_meta_data_as_properties)
          @last_modified_at = args[:last_modified_at] if args.key?(:last_modified_at)
          @name = args[:name] if args.key?(:name)
          @policies = args[:policies] if args.key?(:policies)
          @resource_files = args[:resource_files] if args.key?(:resource_files)
          @resources = args[:resources] if args.key?(:resources)
          @revision = args[:revision] if args.key?(:revision)
          @shared_flows = args[:shared_flows] if args.key?(:shared_flows)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This message type encapsulates a stats response
      class GoogleCloudApigeeV1Stats
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1StatsEnvironmentStats>]
        attr_accessor :environments
      
        # This message type encapsulates additional information about query execution
        # Corresponds to the JSON property `metaData`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metadata]
        attr_accessor :meta_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environments = args[:environments] if args.key?(:environments)
          @meta_data = args[:meta_data] if args.key?(:meta_data)
        end
      end
      
      # This message type encapsulates the environment wrapper
      # "environments": [
      # `
      # "metrics": [
      # `
      # "name": "sum(message_count)",
      # "values": [
      # "2.52056245E8"
      # ]
      # `
      # ],
      # "name": "prod"
      # `
      # ]
      class GoogleCloudApigeeV1StatsEnvironmentStats
        include Google::Apis::Core::Hashable
      
        # This field contains the list of metrics grouped under dimensions
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1DimensionMetric>]
        attr_accessor :dimensions
      
        # In the final response, only one of the following fields will be present
        # based on the dimensions provided. If no dimensions are provided, then
        # only a top level metrics is provided. If dimensions are included, then
        # there will be a top level dimensions field under environments which will
        # contain metrics values and the dimension name.
        # Example:
        # "environments": [
        # `
        # "dimensions": [
        # `
        # "metrics": [
        # `
        # "name": "sum(message_count)",
        # "values": [
        # "2.14049521E8"
        # ]
        # `
        # ],
        # "name": "nit_proxy"
        # `
        # ],
        # "name": "prod"
        # `
        # ]
        # OR
        # "environments": [
        # `
        # "metrics": [
        # `
        # "name": "sum(message_count)",
        # "values": [
        # "2.19026331E8"
        # ]
        # `
        # ],
        # "name": "prod"
        # `
        # ]
        # This field contains the list of metric values
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::ApigeeV1::GoogleCloudApigeeV1Metric>]
        attr_accessor :metrics
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Pub/Sub subscription of an environment.
      class GoogleCloudApigeeV1Subscription
        include Google::Apis::Core::Hashable
      
        # Full name of the Pub/Sub subcription. Use the following structure in your
        # request:
        # `subscription "projects/foo/subscription/bar"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudApigeeV1SyncAuthorization
        include Google::Apis::Core::Hashable
      
        # Entity tag (ETag) used for optimistic concurrency control as a way to help
        # prevent simultaneous updates from overwriting each other.
        # For example, when you call  [getSyncAuthorization](getSyncAuthorization)
        # an ETag is returned in the response. Pass that ETag when calling
        # the [setSyncAuthorization](setSyncAuthorization) to ensure
        # that you are updating the correct version. If you don't pass the
        # ETag in the call to `setSyncAuthorization`, then the
        # existing authorization is overwritten indiscriminately.
        # **Note**: We strongly recommend that you use the ETag in the
        # read-modify-write cycle to avoid race conditions.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Required. Array of service accounts to grant access to control plane
        # resources, each specified using the following
        # format: `serviceAccount:`<var>service-account-name</var>.
        # The <var>service-account-name</var> is formatted like an email address. For
        # example:
        # `my-synchronizer-manager-service_account@my_project_id.iam.gserviceaccount.com`
        # You might specify multiple service accounts, for example, if you have
        # multiple environments and wish to assign a unique service account to each
        # one.
        # The service accounts must have **Apigee Synchronizer Manager** role.
        # See also [Create service
        # accounts](https://docs.apigee.com/hybrid/latest/sa-about#create-the-service-
        # accounts).
        # Corresponds to the JSON property `identities`
        # @return [Array<String>]
        attr_accessor :identities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @identities = args[:identities] if args.key?(:identities)
        end
      end
      
      # TargetServer configuration. TargetServers are used to decouple a proxy's
      # TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.
      class GoogleCloudApigeeV1TargetServer
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description of this TargetServer.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The host name this target connects to. Value must be a valid
        # hostname as described by RFC-1123.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Optional. Enabling/disabling a TargetServer is useful when TargetServers
        # are used in load balancing configurations, and one or more TargetServers
        # need to taken out of rotation periodically. Defaults to true.
        # Corresponds to the JSON property `isEnabled`
        # @return [Boolean]
        attr_accessor :is_enabled
        alias_method :is_enabled?, :is_enabled
      
        # Required. The resource id of this target server. Values must match the
        # regular expression
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The port number this target connects to on the given host. Value
        # must be between 1 and 65535, inclusive.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # TLS configuration information for
        # VirtualHosts and
        # TargetServers.
        # Corresponds to the JSON property `sSLInfo`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfo]
        attr_accessor :s_sl_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @host = args[:host] if args.key?(:host)
          @is_enabled = args[:is_enabled] if args.key?(:is_enabled)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @s_sl_info = args[:s_sl_info] if args.key?(:s_sl_info)
        end
      end
      
      # 
      class GoogleCloudApigeeV1TargetServerConfig
        include Google::Apis::Core::Hashable
      
        # Target host name.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The target server revision name. Must be of the form
        # 'organizations/`org`/environments/`env`/targetservers/`ts_id`/revisions/`rev`'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Target port.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # TLS settings for the target.
        # Corresponds to the JSON property `tlsInfo`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoConfig]
        attr_accessor :tls_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @tls_info = args[:tls_info] if args.key?(:tls_info)
        end
      end
      
      # TLS configuration information for
      # VirtualHosts and
      # TargetServers.
      class GoogleCloudApigeeV1TlsInfo
        include Google::Apis::Core::Hashable
      
        # The SSL/TLS cipher suites to be used. Must be one of the cipher suite names
        # listed in:
        # http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.
        # html#ciphersuites
        # Corresponds to the JSON property `ciphers`
        # @return [Array<String>]
        attr_accessor :ciphers
      
        # Optional. Enables two-way TLS.
        # Corresponds to the JSON property `clientAuthEnabled`
        # @return [Boolean]
        attr_accessor :client_auth_enabled
        alias_method :client_auth_enabled?, :client_auth_enabled
      
        # The TLS Common Name of the certificate.
        # Corresponds to the JSON property `commonName`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TlsInfoCommonName]
        attr_accessor :common_name
      
        # Required. Enables one-way TLS.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # If true, Edge ignores TLS certificate errors. Valid when configuring TLS
        # for target servers and target endpoints, and when configuring virtual hosts
        # that use 2-way TLS.
        # When used with a target endpoint/target server, if the backend system uses
        # SNI and returns a cert with a subject Distinguished Name (DN) that does not
        # match the hostname, there is no way to ignore the error and the connection
        # fails.
        # Corresponds to the JSON property `ignoreValidationErrors`
        # @return [Boolean]
        attr_accessor :ignore_validation_errors
        alias_method :ignore_validation_errors?, :ignore_validation_errors
      
        # Required if `client_auth_enabled` is true. The resource ID for the
        # alias containing the private key and cert.
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        # Required if `client_auth_enabled` is true. The resource ID of the
        # keystore. References not yet supported.
        # Corresponds to the JSON property `keyStore`
        # @return [String]
        attr_accessor :key_store
      
        # The TLS versioins to be used.
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        # The resource ID of the truststore.
        # References not yet supported.
        # Corresponds to the JSON property `trustStore`
        # @return [String]
        attr_accessor :trust_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphers = args[:ciphers] if args.key?(:ciphers)
          @client_auth_enabled = args[:client_auth_enabled] if args.key?(:client_auth_enabled)
          @common_name = args[:common_name] if args.key?(:common_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @ignore_validation_errors = args[:ignore_validation_errors] if args.key?(:ignore_validation_errors)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
          @key_store = args[:key_store] if args.key?(:key_store)
          @protocols = args[:protocols] if args.key?(:protocols)
          @trust_store = args[:trust_store] if args.key?(:trust_store)
        end
      end
      
      # 
      class GoogleCloudApigeeV1TlsInfoCommonName
        include Google::Apis::Core::Hashable
      
        # The TLS Common Name string of the certificate.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        # Indicates whether the cert should be matched against as a wildcard cert.
        # Corresponds to the JSON property `wildcardMatch`
        # @return [Boolean]
        attr_accessor :wildcard_match
        alias_method :wildcard_match?, :wildcard_match
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
          @wildcard_match = args[:wildcard_match] if args.key?(:wildcard_match)
        end
      end
      
      # 
      class GoogleCloudApigeeV1TlsInfoConfig
        include Google::Apis::Core::Hashable
      
        # Whitelist of supported ciphers.
        # Corresponds to the JSON property `ciphers`
        # @return [Array<String>]
        attr_accessor :ciphers
      
        # Indicates if client auth is enabled for the target. Enables two-way TLS.
        # Corresponds to the JSON property `clientAuthEnabled`
        # @return [Boolean]
        attr_accessor :client_auth_enabled
        alias_method :client_auth_enabled?, :client_auth_enabled
      
        # Common name to validate the target against.
        # Corresponds to the JSON property `commonName`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CommonNameConfig]
        attr_accessor :common_name
      
        # Enables one-way TLS.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # If true, ignore TLS certificate validation errors.
        # Corresponds to the JSON property `ignoreValidationErrors`
        # @return [Boolean]
        attr_accessor :ignore_validation_errors
        alias_method :ignore_validation_errors?, :ignore_validation_errors
      
        # The name of the Alias used for client side auth. It must be of the form:
        # organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias`
        # Corresponds to the JSON property `keyAlias`
        # @return [String]
        attr_accessor :key_alias
      
        # A pair of reference name and alias to use for client side auth.
        # Corresponds to the JSON property `keyAliasReference`
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyAliasReference]
        attr_accessor :key_alias_reference
      
        # Whitelist of supported TLS protocols.
        # Corresponds to the JSON property `protocols`
        # @return [Array<String>]
        attr_accessor :protocols
      
        # The name of the Keystore or keystore reference containing trusted
        # certificates for the server. It must be of either the form
        # organizations/`org`/environments/`env`/keystores/`keystore` or
        # organizations/`org`/environments/`env`/references/`reference`.
        # Corresponds to the JSON property `trustStore`
        # @return [String]
        attr_accessor :trust_store
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ciphers = args[:ciphers] if args.key?(:ciphers)
          @client_auth_enabled = args[:client_auth_enabled] if args.key?(:client_auth_enabled)
          @common_name = args[:common_name] if args.key?(:common_name)
          @enabled = args[:enabled] if args.key?(:enabled)
          @ignore_validation_errors = args[:ignore_validation_errors] if args.key?(:ignore_validation_errors)
          @key_alias = args[:key_alias] if args.key?(:key_alias)
          @key_alias_reference = args[:key_alias_reference] if args.key?(:key_alias_reference)
          @protocols = args[:protocols] if args.key?(:protocols)
          @trust_store = args[:trust_store] if args.key?(:trust_store)
        end
      end
      
      # Specifies the audit configuration for a service.
      # The configuration determines which permission types are logged, and what
      # identities, if any, are exempted from logging.
      # An AuditConfig must have one or more AuditLogConfigs.
      # If there are AuditConfigs for both `allServices` and a specific service,
      # the union of the two AuditConfigs is used for that service: the log_types
      # specified in each AuditConfig are enabled, and the exempted_members in each
      # AuditLogConfig are exempted.
      # Example Policy with multiple AuditConfigs:
      # `
      # "audit_configs": [
      # `
      # "service": "allServices"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:jose@example.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `,
      # `
      # "log_type": "ADMIN_READ",
      # `
      # ]
      # `,
      # `
      # "service": "sampleservice.googleapis.com"
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # "exempted_members": [
      # "user:aliya@example.com"
      # ]
      # `
      # ]
      # `
      # ]
      # `
      # For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
      # logging. It also exempts jose@example.com from DATA_READ logging, and
      # aliya@example.com from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging.
        # For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
        # `allServices` is a special value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions.
      # Example:
      # `
      # "audit_log_configs": [
      # `
      # "log_type": "DATA_READ",
      # "exempted_members": [
      # "user:jose@example.com"
      # ]
      # `,
      # `
      # "log_type": "DATA_WRITE",
      # `
      # ]
      # `
      # This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting
      # jose@example.com from DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of
        # permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members` with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL)
        # syntax. CEL is a C-like expression language. The syntax and semantics of CEL
        # are documented at https://github.com/google/cel-spec.
        # Example (Comparison):
        # title: "Summary size limit"
        # description: "Determines if a summary is less than 100 chars"
        # expression: "document.summary.size() < 100"
        # Example (Equality):
        # title: "Requestor is owner"
        # description: "Determines if requestor is the document owner"
        # expression: "document.owner == request.auth.claims.email"
        # Example (Logic):
        # title: "Public documents"
        # description: "Determine whether the document should be publicly visible"
        # expression: "document.type != 'private' && document.type != 'internal'"
        # Example (Data Manipulation):
        # title: "Notification string"
        # description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)"
        # The exact variables and functions that may be referenced within an expression
        # are determined by the service that evaluates it. See the service
        # documentation for additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ApigeeV1::GoogleTypeExpr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # `members` can have the following values:
        # * `allUsers`: A special identifier that represents anyone who is
        # on the internet; with or without a Google account.
        # * `allAuthenticatedUsers`: A special identifier that represents anyone
        # who is authenticated with a Google account or a service account.
        # * `user:`emailid``: An email address that represents a specific Google
        # account. For example, `alice@example.com` .
        # * `serviceAccount:`emailid``: An email address that represents a service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`.
        # * `group:`emailid``: An email address that represents a Google group.
        # For example, `admins@example.com`.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For
        # example, `alice@example.com?uid=123456789012345678901`. If the user is
        # recovered, this value reverts to `user:`emailid`` and the recovered user
        # retains the role in the binding.
        # * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus
        # unique identifier) representing a service account that has been recently
        # deleted. For example,
        # `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to
        # `serviceAccount:`emailid`` and the undeleted service account retains the
        # role in the binding.
        # * `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently
        # deleted. For example, `admins@example.com?uid=123456789012345678901`. If
        # the group is recovered, this value reverts to `group:`emailid`` and the
        # recovered group retains the role in the binding.
        # * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`.
        # For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources.
      # A `Policy` is a collection of `bindings`. A `binding` binds one or more
      # `members` to a single `role`. Members can be user accounts, service accounts,
      # Google groups, and domains (such as G Suite). A `role` is a named list of
      # permissions; each `role` can be an IAM predefined role or a user-created
      # custom role.
      # For some types of Google Cloud resources, a `binding` can also specify a
      # `condition`, which is a logical expression that allows access to a resource
      # only if the expression evaluates to `true`. A condition can add constraints
      # based on attributes of the request, the resource, or both. To learn which
      # resources support conditions in their IAM policies, see the
      # [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-
      # policies).
      # **JSON example:**
      # `
      # "bindings": [
      # `
      # "role": "roles/resourcemanager.organizationAdmin",
      # "members": [
      # "user:mike@example.com",
      # "group:admins@example.com",
      # "domain:google.com",
      # "serviceAccount:my-project-id@appspot.gserviceaccount.com"
      # ]
      # `,
      # `
      # "role": "roles/resourcemanager.organizationViewer",
      # "members": [
      # "user:eve@example.com"
      # ],
      # "condition": `
      # "title": "expirable access",
      # "description": "Does not grant access after Sep 2020",
      # "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')
      # ",
      # `
      # `
      # ],
      # "etag": "BwWWja0YfJA=",
      # "version": 3
      # `
      # **YAML example:**
      # bindings:
      # - members:
      # - user:mike@example.com
      # - group:admins@example.com
      # - domain:google.com
      # - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin
      # - members:
      # - user:eve@example.com
      # role: roles/resourcemanager.organizationViewer
      # condition:
      # title: expirable access
      # description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
      # - etag: BwWWja0YfJA=
      # - version: 3
      # For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::ApigeeV1::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a
        # `condition` that determines how and when the `bindings` are applied. Each
        # of the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::ApigeeV1::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # **Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows
        # you to overwrite a version `3` policy with a version `1` policy, and all of
        # the conditions in the version `3` policy are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy.
        # Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
        # are rejected.
        # Any operation that affects conditional role bindings must specify version
        # `3`. This requirement applies to the following operations:
        # * Getting a policy that includes a conditional role binding
        # * Adding a conditional role binding to a policy
        # * Changing a conditional role binding in a policy
        # * Removing any role binding, with or without a condition, from a policy
        # that includes conditions
        # **Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows
        # you to overwrite a version `3` policy with a version `1` policy, and all of
        # the conditions in the version `3` policy are lost.
        # If a policy does not include any conditions, operations on that policy may
        # specify any valid version or leave the field unset.
        # To learn which resources support conditions in their IAM policies, see the
        # [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-
        # policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources.
        # A `Policy` is a collection of `bindings`. A `binding` binds one or more
        # `members` to a single `role`. Members can be user accounts, service accounts,
        # Google groups, and domains (such as G Suite). A `role` is a named list of
        # permissions; each `role` can be an IAM predefined role or a user-created
        # custom role.
        # For some types of Google Cloud resources, a `binding` can also specify a
        # `condition`, which is a logical expression that allows access to a resource
        # only if the expression evaluates to `true`. A condition can add constraints
        # based on attributes of the request, the resource, or both. To learn which
        # resources support conditions in their IAM policies, see the
        # [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-
        # policies).
        # **JSON example:**
        # `
        # "bindings": [
        # `
        # "role": "roles/resourcemanager.organizationAdmin",
        # "members": [
        # "user:mike@example.com",
        # "group:admins@example.com",
        # "domain:google.com",
        # "serviceAccount:my-project-id@appspot.gserviceaccount.com"
        # ]
        # `,
        # `
        # "role": "roles/resourcemanager.organizationViewer",
        # "members": [
        # "user:eve@example.com"
        # ],
        # "condition": `
        # "title": "expirable access",
        # "description": "Does not grant access after Sep 2020",
        # "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')
        # ",
        # `
        # `
        # ],
        # "etag": "BwWWja0YfJA=",
        # "version": 3
        # `
        # **YAML example:**
        # bindings:
        # - members:
        # - user:mike@example.com
        # - group:admins@example.com
        # - domain:google.com
        # - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin
        # - members:
        # - user:eve@example.com
        # role: roles/resourcemanager.organizationViewer
        # condition:
        # title: expirable access
        # description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
        # - etag: BwWWja0YfJA=
        # - version: 3
        # For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ApigeeV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the
        # following default mask is used:
        # `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with
        # wildcards (such as '*' or 'storage.*') are not allowed. For more
        # information see
        # [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is
        # allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ApigeeV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ApigeeV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL)
      # syntax. CEL is a C-like expression language. The syntax and semantics of CEL
      # are documented at https://github.com/google/cel-spec.
      # Example (Comparison):
      # title: "Summary size limit"
      # description: "Determines if a summary is less than 100 chars"
      # expression: "document.summary.size() < 100"
      # Example (Equality):
      # title: "Requestor is owner"
      # description: "Determines if requestor is the document owner"
      # expression: "document.owner == request.auth.claims.email"
      # Example (Logic):
      # title: "Public documents"
      # description: "Determine whether the document should be publicly visible"
      # expression: "document.type != 'private' && document.type != 'internal'"
      # Example (Data Manipulation):
      # title: "Notification string"
      # description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)"
      # The exact variables and functions that may be referenced within an expression
      # are determined by the service that evaluates it. See the service
      # documentation for additional information.
      class GoogleTypeExpr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language
        # syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing
        # its purpose. This can be used e.g. in UIs which allow to enter the
        # expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
    end
  end
end
