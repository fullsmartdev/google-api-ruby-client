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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module RemotebuildexecutionV1
      # Remote Build Execution API
      #
      # Supplies a Remote Execution API service for tools such as bazel.
      #
      # @example
      #    require 'google/apis/remotebuildexecution_v1'
      #
      #    Remotebuildexecution = Google::Apis::RemotebuildexecutionV1 # Alias the module
      #    service = Remotebuildexecution::RemoteBuildExecutionService.new
      #
      # @see https://cloud.google.com/remote-build-execution/docs/
      class RemoteBuildExecutionService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://remotebuildexecution.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Downloads media. Download is supported
        # on the URI `/v1/media/`+name`?alt=media`.
        # @param [String] resource_name
        #   Name of the media that is being downloaded.  See
        #   ReadRequest.resource_name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_medium(resource_name, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command =  make_simple_command(:get, 'v1/media/{+resourceName}', options)
          else
            command = make_download_command(:get, 'v1/media/{+resourceName}', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads media. Upload is supported on
        # the URI `/upload/v1/media/`+name``.
        # @param [String] resource_name
        #   Name of the media that is being downloaded.  See
        #   ReadRequest.resource_name.
        # @param [Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia] google_bytestream_media_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_medium(resource_name, google_bytestream_media_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command =  make_simple_command(:post, 'v1/media/{+resourceName}', options)
          else
            command = make_upload_command(:post, 'v1/media/{+resourceName}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia::Representation
          command.request_object = google_bytestream_media_object
          command.response_representation = Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1::GoogleBytestreamMedia
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation.  The server
        # makes a best effort to cancel the operation, but success is not
        # guaranteed.  If the server doesn't support this method, it returns
        # `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
        # Operations.GetOperation or
        # other methods to check whether the cancellation succeeded or whether the
        # operation completed despite cancellation. On successful cancellation,
        # the operation is not deleted; instead, it becomes an operation with
        # an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::RemotebuildexecutionV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::RemotebuildexecutionV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is
        # no longer interested in the operation result. It does not cancel the
        # operation. If the server doesn't support this method, it returns
        # `google.rpc.Code.UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the
        # server doesn't support this method, it returns `UNIMPLEMENTED`.
        # NOTE: the `name` binding allows API services to override the binding
        # to use different resource name schemes, such as `users/*/operations`. To
        # override the binding, API services can add a binding such as
        # `"/v1/`name=users/*`/operations"` to their service configuration.
        # For backwards compatibility, the default name includes the operations
        # collection id, however overriding users must ensure the name binding
        # is the parent resource, without the operations collection id.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Start a streaming RPC to get watch information from the server.
        # @param [String] resume_marker
        #   The `resume_marker` specifies how much of the existing underlying state is
        #   delivered to the client when the watch request is received by the
        #   system. The client can set this marker in one of the following ways to get
        #   different semantics:
        #   *   Parameter is not specified or has the value "".
        #   Semantics: Fetch initial state.
        #   The client wants the entity's initial state to be delivered. See the
        #   description in "Initial State".
        #   *   Parameter is set to the string "now" (UTF-8 encoding).
        #   Semantics: Fetch new changes only.
        #   The client just wants to get the changes received by the system after
        #   the watch point. The system may deliver changes from before the watch
        #   point as well.
        #   *   Parameter is set to a value received in an earlier
        #   `Change.resume_marker` field while watching the same entity.
        #   Semantics: Resume from a specific point.
        #   The client wants to receive the changes from a specific point; this
        #   value must correspond to a value received in the `Change.resume_marker`
        #   field. The system may deliver changes from before the `resume_marker`
        #   as well. If the system cannot resume the stream from this point (e.g.,
        #   if it is too far behind in the stream), it can raise the
        #   `FAILED_PRECONDITION` error.
        #   An implementation MUST support an unspecified parameter and the
        #   empty string "" marker (initial state fetching) and the "now" marker.
        #   It need not support resuming from a specific point.
        # @param [String] target
        #   The `target` value **must** be a valid URL path pointing to an entity
        #   to watch. Note that the service name **must** be
        #   removed from the target field (e.g., the target field must say
        #   "/foo/bar", not "myservice.googleapis.com/foo/bar"). A client is
        #   also allowed to pass system-specific parameters in the URL that
        #   are only obeyed by some implementations. Some parameters will be
        #   implementation-specific. However, some have predefined meaning
        #   and are listed here:
        #   * recursive = true|false [default=false]
        #   If set to true, indicates that the client wants to watch all elements
        #   of entities in the subtree rooted at the entity's name in `target`. For
        #   descendants that are not the immediate children of the target, the
        #   `Change.element` will contain slashes.
        #   Note that some namespaces and entities will not support recursive
        #   watching. When watching such an entity, a client must not set recursive
        #   to true. Otherwise, it will receive an `UNIMPLEMENTED` error.
        #   Normal URL encoding must be used inside `target`.  For example, if a query
        #   parameter name or value, or the non-query parameter portion of `target`
        #   contains a special character, it must be %-encoded.  We recommend that
        #   clients and servers use their runtime's URL library to produce and consume
        #   target values.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RemotebuildexecutionV1::GoogleWatcherV1ChangeBatch] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RemotebuildexecutionV1::GoogleWatcherV1ChangeBatch]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch(resume_marker: nil, target: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1:watch', options)
          command.response_representation = Google::Apis::RemotebuildexecutionV1::GoogleWatcherV1ChangeBatch::Representation
          command.response_class = Google::Apis::RemotebuildexecutionV1::GoogleWatcherV1ChangeBatch
          command.query['resumeMarker'] = resume_marker unless resume_marker.nil?
          command.query['target'] = target unless target.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
