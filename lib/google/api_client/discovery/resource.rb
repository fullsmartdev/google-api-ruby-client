# Copyright 2010 Google Inc.
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


require 'addressable/uri'

require 'google/inflection'
require 'google/api_client/discovery/method'

module Google
  class APIClient
    ##
    # A resource that has been described by a discovery document.
    class Resource

      ##
      # Creates a description of a particular version of a resource.
      #
      # @param [Addressable::URI] base
      #   The base URI for the service.
      # @param [String] resource_name
      #   The identifier for the resource.
      # @param [Hash] resource_description
      #   The section of the discovery document that applies to this resource.
      #
      # @return [Google::APIClient::Resource] The constructed resource object.
      def initialize(method_base, resource_name, discovery_document)
        @method_base = method_base
        @name = resource_name
        @discovery_document = discovery_document
        metaclass = (class <<self; self; end)
        self.resources.each do |resource|
          method_name = Google::INFLECTOR.underscore(resource.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { resource }
          end
        end
        self.methods.each do |method|
          method_name = Google::INFLECTOR.underscore(method.name).to_sym
          if !self.respond_to?(method_name)
            metaclass.send(:define_method, method_name) { method }
          end
        end
      end

      ##
      # Returns the identifier for the resource.
      #
      # @return [String] The resource identifier.
      attr_reader :name

      ##
      # Returns the parsed section of the discovery document that applies to
      # this resource.
      #
      # @return [Hash] The resource description.
      attr_reader :description

      ##
      # Returns the base URI for this resource.
      #
      # @return [Addressable::URI] The base URI that methods are joined to.
      attr_reader :method_base

      ##
      # Updates the hierarchy of resources and methods with the new base.
      #
      # @param [Addressable::URI, #to_str, String] new_base
      #   The new base URI to use for the resource.
      def method_base=(new_method_base)
        @method_base = Addressable::URI.parse(new_method_base)
        self.resources.each do |resource|
          resource.method_base = @method_base
        end
        self.methods.each do |method|
          method.method_base = @method_base
        end
      end

      ##
      # A list of sub-resources available on this resource.
      #
      # @return [Array] A list of {Google::APIClient::Resource} objects.
      def resources
        return @resources ||= (
          (@discovery_document['resources'] || []).inject([]) do |accu, (k, v)|
            accu << Google::APIClient::Resource.new(self.method_base, k, v)
            accu
          end
        )
      end

      ##
      # A list of methods available on this resource.
      #
      # @return [Array] A list of {Google::APIClient::Method} objects.
      def methods
        return @methods ||= (
          (@discovery_document['methods'] || []).inject([]) do |accu, (k, v)|
            accu << Google::APIClient::Method.new(self.method_base, k, v)
            accu
          end
        )
      end

      ##
      # Converts the resource to a flat mapping of RPC names and method
      # objects.
      #
      # @return [Hash] All methods available on the resource.
      def to_h
        return @hash ||= (begin
          methods_hash = {}
          self.methods.each do |method|
            methods_hash[method.id] = method
          end
          self.resources.each do |resource|
            methods_hash.merge!(resource.to_h)
          end
          methods_hash
        end)
      end

      ##
      # Returns a <code>String</code> representation of the resource's state.
      #
      # @return [String] The resource's state, as a <code>String</code>.
      def inspect
        sprintf(
          "#<%s:%#0x NAME:%s>", self.class.to_s, self.object_id, self.name
        )
      end
    end
  end
end
