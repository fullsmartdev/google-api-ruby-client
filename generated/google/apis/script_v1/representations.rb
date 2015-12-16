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
    module ScriptV1
      
      class ExecutionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExecutionError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ScriptStackTraceElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExecutionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExecutionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          collection :parameters, as: 'parameters'
          property :session_state, as: 'sessionState'
          property :dev_mode, as: 'devMode'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ScriptV1::Status, decorator: Google::Apis::ScriptV1::Status::Representation
      
          hash :response, as: 'response'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class ExecutionError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :script_stack_trace_elements, as: 'scriptStackTraceElements', class: Google::Apis::ScriptV1::ScriptStackTraceElement, decorator: Google::Apis::ScriptV1::ScriptStackTraceElement::Representation
      
          property :error_message, as: 'errorMessage'
          property :error_type, as: 'errorType'
        end
      end
      
      class ScriptStackTraceElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          property :line_number, as: 'lineNumber'
        end
      end
      
      class ExecutionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result'
        end
      end
    end
  end
end
