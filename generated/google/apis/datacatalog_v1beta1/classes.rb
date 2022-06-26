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
    module DatacatalogV1beta1
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents an expression text. Example:
        # title: "User account presence"
        # description: "Determines whether the request has a user account"
        # expression: "size(request.user) > 0"
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::DatacatalogV1beta1::Expr]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents an expression text. Example:
      # title: "User account presence"
      # description: "Determines whether the request has a user account"
      # expression: "size(request.user) > 0"
      class Expr
        include Google::Apis::Core::Hashable
      
        # An optional description of the expression. This is a longer text which
        # describes the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in
        # Common Expression Language syntax.
        # The application context of the containing message determines which
        # well-known feature set of CEL is supported.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # An optional string indicating the location of the expression for error
        # reporting, e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # An optional title for the expression, i.e. a short string describing
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DatacatalogV1beta1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The policy format version to be returned.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected.
        # Requests for policies with any conditional bindings must specify version 3.
        # Policies without any conditional bindings may specify any valid value or
        # leave the field unset.
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # Spec for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`.
      # Context:
      # https://cloud.google.com/bigquery/docs/partitioned-tables#
      # partitioning_versus_sharding
      class GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The Data Catalog resource name of the dataset entry the current
        # table
        # belongs to, for example,
        # `projects/`project_id`/locations/`location`/entrygroups/`entry_group_id`/
        # entries/`entry_id``.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Output only. The table name prefix of the shards. The name of any given shard
        # is
        # `[table_prefix]YYYYMMDD`, for example, for shard `MyTable20180101`, the
        # `table_prefix` is `MyTable`.
        # Corresponds to the JSON property `tablePrefix`
        # @return [String]
        attr_accessor :table_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @table_prefix = args[:table_prefix] if args.key?(:table_prefix)
        end
      end
      
      # Describes a BigQuery table.
      class GoogleCloudDatacatalogV1beta1BigQueryTableSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The table source type.
        # Corresponds to the JSON property `tableSourceType`
        # @return [String]
        attr_accessor :table_source_type
      
        # Normal BigQuery table spec.
        # Corresponds to the JSON property `tableSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TableSpec]
        attr_accessor :table_spec
      
        # Table view specification.
        # Corresponds to the JSON property `viewSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ViewSpec]
        attr_accessor :view_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_source_type = args[:table_source_type] if args.key?(:table_source_type)
          @table_spec = args[:table_spec] if args.key?(:table_spec)
          @view_spec = args[:view_spec] if args.key?(:view_spec)
        end
      end
      
      # Representation of a column within a schema. Columns could be nested inside
      # other columns.
      class GoogleCloudDatacatalogV1beta1ColumnSchema
        include Google::Apis::Core::Hashable
      
        # Required. Name of the column.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. Description of the column. Default value is an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A column's mode indicates whether the values in this column are
        # required,
        # nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are supported.
        # Default mode is `NULLABLE`.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. Schema of sub-columns. A column can have zero or more sub-columns.
        # Corresponds to the JSON property `subcolumns`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema>]
        attr_accessor :subcolumns
      
        # Required. Type of the column.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @description = args[:description] if args.key?(:description)
          @mode = args[:mode] if args.key?(:mode)
          @subcolumns = args[:subcolumns] if args.key?(:subcolumns)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Entry Metadata.
      # A Data Catalog Entry resource represents another resource in Google
      # Cloud Platform, such as a BigQuery dataset or a Cloud Pub/Sub topic.
      # Clients can use the `linked_resource` field in the Entry resource to refer to
      # the original resource ID of the source system.
      # An Entry resource contains resource details, such as its schema. An Entry can
      # also be used to attach flexible metadata, such as a
      # Tag.
      class GoogleCloudDatacatalogV1beta1Entry
        include Google::Apis::Core::Hashable
      
        # Spec for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`.
        # Context:
        # https://cloud.google.com/bigquery/docs/partitioned-tables#
        # partitioning_versus_sharding
        # Corresponds to the JSON property `bigqueryDateShardedSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec]
        attr_accessor :bigquery_date_sharded_spec
      
        # Describes a BigQuery table.
        # Corresponds to the JSON property `bigqueryTableSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryTableSpec]
        attr_accessor :bigquery_table_spec
      
        # Entry description, which can consist of several sentences or paragraphs
        # that describe entry contents. Default value is an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display information such as title and description. A short name to identify
        # the entry, for example, "Analytics Data - Jan 2011". Default value is an
        # empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Describes a Cloud Storage fileset entry.
        # Corresponds to the JSON property `gcsFilesetSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFilesetSpec]
        attr_accessor :gcs_fileset_spec
      
        # Output only. The resource this metadata entry refers to.
        # For Google Cloud Platform resources, `linked_resource` is the [full name of
        # the
        # resource](https://cloud.google.com/apis/design/resource_names#
        # full_resource_name).
        # For example, the `linked_resource` for a table resource from BigQuery is:
        # * //bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/
        # tableId
        # Corresponds to the JSON property `linkedResource`
        # @return [String]
        attr_accessor :linked_resource
      
        # The Data Catalog resource name of the entry in URL format. Example:
        # * projects/`project_id`/locations/`location`/entryGroups/`entry_group_id`/
        # entries/`entry_id`
        # Note that this Entry and its child resources may not actually be stored in
        # the location in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Schema]
        attr_accessor :schema
      
        # Timestamps about this resource according to a particular system.
        # Corresponds to the JSON property `sourceSystemTimestamps`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps]
        attr_accessor :source_system_timestamps
      
        # The type of the entry.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_date_sharded_spec = args[:bigquery_date_sharded_spec] if args.key?(:bigquery_date_sharded_spec)
          @bigquery_table_spec = args[:bigquery_table_spec] if args.key?(:bigquery_table_spec)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gcs_fileset_spec = args[:gcs_fileset_spec] if args.key?(:gcs_fileset_spec)
          @linked_resource = args[:linked_resource] if args.key?(:linked_resource)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
          @source_system_timestamps = args[:source_system_timestamps] if args.key?(:source_system_timestamps)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # EntryGroup Metadata.
      # An EntryGroup resource represents a logical grouping of zero or more
      # Data Catalog Entry resources.
      class GoogleCloudDatacatalogV1beta1EntryGroup
        include Google::Apis::Core::Hashable
      
        # Timestamps about this resource according to a particular system.
        # Corresponds to the JSON property `dataCatalogTimestamps`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps]
        attr_accessor :data_catalog_timestamps
      
        # Entry group description, which can consist of several sentences or
        # paragraphs that describe entry group contents. Default value is an empty
        # string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A short name to identify the entry group, for example,
        # "analytics data - jan 2011". Default value is an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the entry group in URL format. Example:
        # * projects/`project_id`/locations/`location`/entryGroups/`entry_group_id`
        # Note that this EntryGroup and its child resources may not actually be
        # stored in the location in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_catalog_timestamps = args[:data_catalog_timestamps] if args.key?(:data_catalog_timestamps)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDatacatalogV1beta1FieldType
        include Google::Apis::Core::Hashable
      
        # Represents an enum type.
        # Corresponds to the JSON property `enumType`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumType]
        attr_accessor :enum_type
      
        # Represents primitive types - string, bool etc.
        # Corresponds to the JSON property `primitiveType`
        # @return [String]
        attr_accessor :primitive_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enum_type = args[:enum_type] if args.key?(:enum_type)
          @primitive_type = args[:primitive_type] if args.key?(:primitive_type)
        end
      end
      
      # 
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumType
        include Google::Apis::Core::Hashable
      
        # Required on create; optional on update. The set of allowed values for
        # this enum. This set must not be empty, the display names of the values in
        # this set must not be empty and the display names of the values must be
        # case-insensitively unique within this set. Currently, enum values can
        # only be added to the list of allowed values. Deletion and renaming of
        # enum values are not supported. Can have up to 500 allowed values.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>]
        attr_accessor :allowed_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
        end
      end
      
      # 
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the enum value. Must not be an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Specifications of a single file in Cloud Storage.
      class GoogleCloudDatacatalogV1beta1GcsFileSpec
        include Google::Apis::Core::Hashable
      
        # Required. The full file path. Example: `gs://bucket_name/a/b.txt`.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        # Timestamps about this resource according to a particular system.
        # Corresponds to the JSON property `gcsTimestamps`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps]
        attr_accessor :gcs_timestamps
      
        # Output only. The size of the file, in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
          @gcs_timestamps = args[:gcs_timestamps] if args.key?(:gcs_timestamps)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
        end
      end
      
      # Describes a Cloud Storage fileset entry.
      class GoogleCloudDatacatalogV1beta1GcsFilesetSpec
        include Google::Apis::Core::Hashable
      
        # Required. Patterns to identify a set of files in Google Cloud Storage.
        # Examples of valid file_patterns:
        # * `gs://bucket_name/*`: matches all files in `bucket_name`
        # * `gs://bucket_name/file*`: matches files prefixed by `file` in
        # `bucket_name`
        # * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match
        # `a/*/b` pattern, such as `a/c/b`, `a/d/b`
        # * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
        # Corresponds to the JSON property `filePatterns`
        # @return [Array<String>]
        attr_accessor :file_patterns
      
        # Output only. Sample files contained in this fileset, not all files contained
        # in this
        # fileset are represented here.
        # Corresponds to the JSON property `sampleGcsFileSpecs`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFileSpec>]
        attr_accessor :sample_gcs_file_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_patterns = args[:file_patterns] if args.key?(:file_patterns)
          @sample_gcs_file_specs = args[:sample_gcs_file_specs] if args.key?(:sample_gcs_file_specs)
        end
      end
      
      # Response message for
      # ListTags.
      class GoogleCloudDatacatalogV1beta1ListTagsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results. It is set to empty if no items
        # remain in results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tag details.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Request message for
      # RenameTagTemplateField.
      class GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new ID of this tag template field. For example, `my_new_field`.
        # Corresponds to the JSON property `newTagTemplateFieldId`
        # @return [String]
        attr_accessor :new_tag_template_field_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_tag_template_field_id = args[:new_tag_template_field_id] if args.key?(:new_tag_template_field_id)
        end
      end
      
      # Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).
      class GoogleCloudDatacatalogV1beta1Schema
        include Google::Apis::Core::Hashable
      
        # Required. Schema of columns. A maximum of 10,000 columns and sub-columns can
        # be
        # specified.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema>]
        attr_accessor :columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
        end
      end
      
      # Request message for
      # SearchCatalog.
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequest
        include Google::Apis::Core::Hashable
      
        # Specifies the ordering of results, currently supported case-sensitive
        # choices are:
        # * `relevance`, only supports desecending
        # * `last_access_timestamp [asc|desc]`, defaults to descending if not
        # specified
        # * `last_modified_timestamp [asc|desc]`, defaults to descending if not
        # specified
        # If not specified, defaults to `relevance` descending.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Number of results in the search page. If <=0 then defaults to 10. Max limit
        # for page_size is 1000. Throws an invalid argument for page_size > 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. Pagination token returned in an earlier
        # SearchCatalogResponse.next_page_token, which
        # indicates that this is a continuation of a prior
        # SearchCatalogRequest
        # call, and that the system should return the next page of data. If empty,
        # the first page is returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Required. The query string in search query syntax. The query must be non-empty.
        # Query strings can be simple as "x" or more qualified as:
        # * name:x
        # * column:x
        # * description:y
        # Note: Query tokens need to have a minimum of 3 characters for substring
        # matching to work correctly. See [Data Catalog Search
        # Syntax](/data-catalog/docs/how-to/search-reference) for more information.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Required. The scope of this search request.
        # Corresponds to the JSON property `scope`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # 
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope
        include Google::Apis::Core::Hashable
      
        # If `true`, include Google Cloud Platform (GCP) public datasets in the
        # search results. Info on GCP public datasets is available at
        # https://cloud.google.com/public-datasets/. By default, GCP public
        # datasets are excluded.
        # Corresponds to the JSON property `includeGcpPublicDatasets`
        # @return [Boolean]
        attr_accessor :include_gcp_public_datasets
        alias_method :include_gcp_public_datasets?, :include_gcp_public_datasets
      
        # Data Catalog tries to automatically choose the right corpus of data to
        # search through. You can ensure an organization is included by adding it
        # to `include_org_ids`. You can ensure a project's org is included with
        # `include_project_ids`. You must specify at least one organization
        # using `include_org_ids` or `include_project_ids` in all search requests.
        # List of organization IDs to search within. To find your organization ID,
        # follow instructions in
        # https://cloud.google.com/resource-manager/docs/creating-managing-organization.
        # Corresponds to the JSON property `includeOrgIds`
        # @return [Array<String>]
        attr_accessor :include_org_ids
      
        # List of project IDs to search within. To learn more about the
        # distinction between project names/IDs/numbers, go to
        # https://cloud.google.com/docs/overview/#projects.
        # Corresponds to the JSON property `includeProjectIds`
        # @return [Array<String>]
        attr_accessor :include_project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_gcp_public_datasets = args[:include_gcp_public_datasets] if args.key?(:include_gcp_public_datasets)
          @include_org_ids = args[:include_org_ids] if args.key?(:include_org_ids)
          @include_project_ids = args[:include_project_ids] if args.key?(:include_project_ids)
        end
      end
      
      # Response message for
      # SearchCatalog.
      class GoogleCloudDatacatalogV1beta1SearchCatalogResponse
        include Google::Apis::Core::Hashable
      
        # The token that can be used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Search results.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # A result that appears in the response of a search request. Each result
      # captures details of one entry that matches the search.
      class GoogleCloudDatacatalogV1beta1SearchCatalogResult
        include Google::Apis::Core::Hashable
      
        # The full name of the cloud resource the entry belongs to. See:
        # https://cloud.google.com/apis/design/resource_names#full_resource_name.
        # Example:
        # * `//bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/
        # tableId`
        # Corresponds to the JSON property `linkedResource`
        # @return [String]
        attr_accessor :linked_resource
      
        # The relative resource name of the resource in URL format.
        # Examples:
        # * `projects/`project_id`/locations/`location_id`/entryGroups/`entry_group_id`/
        # entries/`entry_id``
        # * `projects/`project_id`/tagTemplates/`tag_template_id``
        # Corresponds to the JSON property `relativeResourceName`
        # @return [String]
        attr_accessor :relative_resource_name
      
        # Sub-type of the search result. This is a dot-delimited description of the
        # resource's full type, and is the same as the value callers would provide in
        # the "type" search facet.  Examples: `entry.table`, `entry.dataStream`,
        # `tagTemplate`.
        # Corresponds to the JSON property `searchResultSubtype`
        # @return [String]
        attr_accessor :search_result_subtype
      
        # Type of the search result. This field can be used to determine which Get
        # method to call to fetch the full resource.
        # Corresponds to the JSON property `searchResultType`
        # @return [String]
        attr_accessor :search_result_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_resource = args[:linked_resource] if args.key?(:linked_resource)
          @relative_resource_name = args[:relative_resource_name] if args.key?(:relative_resource_name)
          @search_result_subtype = args[:search_result_subtype] if args.key?(:search_result_subtype)
          @search_result_type = args[:search_result_type] if args.key?(:search_result_type)
        end
      end
      
      # Timestamps about this resource according to a particular system.
      class GoogleCloudDatacatalogV1beta1SystemTimestamps
        include Google::Apis::Core::Hashable
      
        # The creation time of the resource within the given system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The expiration time of the resource within the given system.
        # Currently only apllicable to BigQuery resources.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The last-modified time of the resource within the given system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Normal BigQuery table spec.
      class GoogleCloudDatacatalogV1beta1TableSpec
        include Google::Apis::Core::Hashable
      
        # Output only. If the table is a dated shard, i.e., with name pattern `[prefix]
        # YYYYMMDD`,
        # `grouped_entry` is the Data Catalog resource name of the date sharded
        # grouped entry, for example,
        # `projects/`project_id`/locations/`location`/entrygroups/`entry_group_id`/
        # entries/`entry_id``.
        # Otherwise, `grouped_entry` is empty.
        # Corresponds to the JSON property `groupedEntry`
        # @return [String]
        attr_accessor :grouped_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grouped_entry = args[:grouped_entry] if args.key?(:grouped_entry)
        end
      end
      
      # Tags are used to attach custom metadata to Data Catalog resources. Tags
      # conform to the specifications within their tag template.
      # See [Data Catalog IAM](/data-catalog/docs/concepts/iam) for information on
      # the permissions needed to create or view tags.
      class GoogleCloudDatacatalogV1beta1Tag
        include Google::Apis::Core::Hashable
      
        # Resources like Entry can have schemas associated with them. This scope
        # allows users to attach tags to an individual column based on that schema.
        # For attaching a tag to a nested column, use `.` to separate the column
        # names. Example:
        # * `outer_column.inner_column`
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Required. This maps the ID of a tag field to the value of and additional
        # information
        # about that field. Valid field IDs are defined by the tag's template. A tag
        # must have at least 1 field and at most 500 fields.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagField>]
        attr_accessor :fields
      
        # The resource name of the tag in URL format. Example:
        # * projects/`project_id`/locations/`location`/entrygroups/`entry_group_id`/
        # entries/`entry_id`/tags/`tag_id`
        # where `tag_id` is a system-generated identifier.
        # Note that this Tag may not actually be stored in the location in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The resource name of the tag template that this tag uses. Example:
        # * projects/`project_id`/locations/`location`/tagTemplates/`tag_template_id`
        # This field cannot be modified after creation.
        # Corresponds to the JSON property `template`
        # @return [String]
        attr_accessor :template
      
        # Output only. The display name of the tag template.
        # Corresponds to the JSON property `templateDisplayName`
        # @return [String]
        attr_accessor :template_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @template = args[:template] if args.key?(:template)
          @template_display_name = args[:template_display_name] if args.key?(:template_display_name)
        end
      end
      
      # Contains the value and supporting information for a field within
      # a Tag.
      class GoogleCloudDatacatalogV1beta1TagField
        include Google::Apis::Core::Hashable
      
        # Holds the value for a tag field with boolean type.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Output only. The display name of this field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Holds the value for a tag field with double type.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Holds an enum value.
        # Corresponds to the JSON property `enumValue`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagFieldEnumValue]
        attr_accessor :enum_value
      
        # Holds the value for a tag field with string type.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Holds the value for a tag field with timestamp type.
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @double_value = args[:double_value] if args.key?(:double_value)
          @enum_value = args[:enum_value] if args.key?(:enum_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # Holds an enum value.
      class GoogleCloudDatacatalogV1beta1TagFieldEnumValue
        include Google::Apis::Core::Hashable
      
        # The display name of the enum value.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A tag template defines the schema of the tags used to attach to Data Catalog
      # resources. It defines the mapping of accepted field names and types that can
      # be used within the tag. The tag template also controls the access to the tag.
      class GoogleCloudDatacatalogV1beta1TagTemplate
        include Google::Apis::Core::Hashable
      
        # The display name for this template. Defaults to an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Map of tag template field IDs to the settings for the field.
        # This map is an exhaustive list of the allowed fields. This map must contain
        # at least one field and at most 500 fields.
        # The keys to this map are tag template field IDs. Field IDs can contain
        # letters (both uppercase and lowercase), numbers (0-9) and underscores (_).
        # Field IDs must be at least 1 character long and at most
        # 64 characters long. Field IDs must start with a letter or underscore.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField>]
        attr_accessor :fields
      
        # The resource name of the tag template in URL format. Example:
        # * projects/`project_id`/locations/`location`/tagTemplates/`tag_template_id`
        # Note that this TagTemplate and its child resources may not actually be
        # stored in the location in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The template for an individual field within a tag template.
      class GoogleCloudDatacatalogV1beta1TagTemplateField
        include Google::Apis::Core::Hashable
      
        # The display name for this field. Defaults to an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The resource name of the tag template field in URL format.
        # Example:
        # * projects/`project_id`/locations/`location`/tagTemplates/`tag_template`/
        # fields/`field`
        # Note that this TagTemplateField may not actually be stored in the location
        # in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The type of value this tag field can contain.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldType]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Table view specification.
      class GoogleCloudDatacatalogV1beta1ViewSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The query that defines the table view.
        # Corresponds to the JSON property `viewQuery`
        # @return [String]
        attr_accessor :view_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @view_query = args[:view_query] if args.key?(:view_query)
        end
      end
      
      # Defines an Identity and Access Management (IAM) policy. It is used to
      # specify access control policies for Cloud Platform resources.
      # A `Policy` is a collection of `bindings`. A `binding` binds one or more
      # `members` to a single `role`. Members can be user accounts, service accounts,
      # Google groups, and domains (such as G Suite). A `role` is a named list of
      # permissions (defined by IAM or configured by users). A `binding` can
      # optionally specify a `condition`, which is a logic expression that further
      # constrains the role binding based on attributes about the request and/or
      # target resource.
      # **JSON Example**
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
      # "members": ["user:eve@example.com"],
      # "condition": `
      # "title": "expirable access",
      # "description": "Does not grant access after Sep 2020",
      # "expression": "request.time <
      # timestamp('2020-10-01T00:00:00.000Z')",
      # `
      # `
      # ]
      # `
      # **YAML Example**
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
      # For a description of IAM and its features, see the
      # [IAM developer's guide](https://cloud.google.com/iam/docs).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`. Optionally may specify a
        # `condition` that determines when binding is in effect.
        # `bindings` with no members will result in an error.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DatacatalogV1beta1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a policy from overwriting each other.
        # It is strongly suggested that systems make use of the `etag` in the
        # read-modify-write cycle to perform policy updates in order to avoid race
        # conditions: An `etag` is returned in the response to `getIamPolicy`, and
        # systems are expected to put that etag in the request to `setIamPolicy` to
        # ensure that their change will be applied to the same version of the policy.
        # If no `etag` is provided in the call to `setIamPolicy`, then the existing
        # policy is overwritten. Due to blind-set semantics of an etag-less policy,
        # 'setIamPolicy' will not fail even if either of incoming or stored policy
        # does not meet the version requirements.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected.
        # Operations affecting conditional bindings must specify version 3. This can
        # be either setting a conditional policy, modifying a conditional binding,
        # or removing a conditional binding from the stored conditional policy.
        # Operations on non-conditional policies may specify any valid value or
        # leave the field unset.
        # If no etag is provided in the call to `setIamPolicy`, any version
        # compliance checks on the incoming and/or stored policy is skipped.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Defines an Identity and Access Management (IAM) policy. It is used to
        # specify access control policies for Cloud Platform resources.
        # A `Policy` is a collection of `bindings`. A `binding` binds one or more
        # `members` to a single `role`. Members can be user accounts, service accounts,
        # Google groups, and domains (such as G Suite). A `role` is a named list of
        # permissions (defined by IAM or configured by users). A `binding` can
        # optionally specify a `condition`, which is a logic expression that further
        # constrains the role binding based on attributes about the request and/or
        # target resource.
        # **JSON Example**
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
        # "members": ["user:eve@example.com"],
        # "condition": `
        # "title": "expirable access",
        # "description": "Does not grant access after Sep 2020",
        # "expression": "request.time <
        # timestamp('2020-10-01T00:00:00.000Z')",
        # `
        # `
        # ]
        # `
        # **YAML Example**
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
        # For a description of IAM and its features, see the
        # [IAM developer's guide](https://cloud.google.com/iam/docs).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
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
      class TestIamPermissionsResponse
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
    end
  end
end
