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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PlayintegrityV1
      # Google Play Integrity API
      #
      # Play Integrity
      #
      # @example
      #    require 'google/apis/playintegrity_v1'
      #
      #    Playintegrity = Google::Apis::PlayintegrityV1 # Alias the module
      #    service = Playintegrity::PlayintegrityService.new
      #
      # @see https://developer.android.com/google/play/integrity
      class PlayintegrityService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://playintegrity.googleapis.com/', '',
                client_name: 'google-apis-playintegrity_v1',
                client_version: Google::Apis::PlayintegrityV1::GEM_VERSION)
          @batch_path = 'batch'
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
