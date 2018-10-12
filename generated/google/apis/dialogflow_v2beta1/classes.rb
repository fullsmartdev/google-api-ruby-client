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
    module DialogflowV2beta1
      
      # The response message for EntityTypes.BatchUpdateEntityTypes.
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created entity types.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # The response message for Intents.BatchUpdateIntents.
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created intents.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # Represents a context.
      class GoogleCloudDialogflowV2Context
        include Google::Apis::Core::Hashable
      
        # Optional. The number of conversational query requests after which the
        # context expires. If set to `0` (the default) the context expires
        # immediately. Contexts expire automatically after 20 minutes even if there
        # are no matching queries.
        # Corresponds to the JSON property `lifespanCount`
        # @return [Fixnum]
        attr_accessor :lifespan_count
      
        # Required. The unique identifier of the context. Format:
        # `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of parameters associated with this context.
        # Refer to [this doc](https://dialogflow.com/docs/actions-and-parameters) for
        # syntax.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lifespan_count = args[:lifespan_count] if args.key?(:lifespan_count)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Represents an entity type.
      # Entity types serve as a tool for extracting parameter values from natural
      # language queries.
      class GoogleCloudDialogflowV2EntityType
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether the entity type can be automatically
        # expanded.
        # Corresponds to the JSON property `autoExpansionMode`
        # @return [String]
        attr_accessor :auto_expansion_mode
      
        # Required. The name of the entity type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The collection of entities associated with the entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates the kind of entity type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required for all methods except `create` (`create` populates the name
        # automatically.
        # The unique identifier of the entity type. Format:
        # `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_expansion_mode = args[:auto_expansion_mode] if args.key?(:auto_expansion_mode)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entities = args[:entities] if args.key?(:entities)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Optional. Represents an entity.
      class GoogleCloudDialogflowV2EntityTypeEntity
        include Google::Apis::Core::Hashable
      
        # Required. A collection of synonyms. For `KIND_LIST` entity types this
        # must contain exactly one synonym equal to `value`.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        # Required.
        # For `KIND_MAP` entity types:
        # A canonical name to be used in place of synonyms.
        # For `KIND_LIST` entity types:
        # A string that can contain references to other entity types (with or
        # without aliases).
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Events allow for matching intents by event name instead of the natural
      # language input. For instance, input `<event: ` name: “welcome_event”,
      # parameters: ` name: “Sam” ` `>` can trigger a personalized welcome response.
      # The parameter `name` may be used by the agent in the response:
      # `“Hello #welcome_event.name! What can I do for you today?”`.
      class GoogleCloudDialogflowV2EventInput
        include Google::Apis::Core::Hashable
      
        # Required. The language of this query. See [Language
        # Support](https://dialogflow.com/docs/languages) for a list of the
        # currently supported language codes. Note that queries in the same session
        # do not necessarily need to specify the same language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The unique identifier of the event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of parameters associated with the event.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # The response message for Agents.ExportAgent.
      class GoogleCloudDialogflowV2ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # The exported agent.
        # Example for how to export an agent to a zip file via a command line:
        # <pre>curl \
        # 'https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:
        # export'\
        # -X POST \
        # -H 'Authorization: Bearer '$(gcloud auth application-default
        # print-access-token) \
        # -H 'Accept: application/json' \
        # -H 'Content-Type: application/json' \
        # --compressed \
        # --data-binary '``' \
        # | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)".*/\1/' \
        # | base64 --decode > &lt;agent zip file&gt;</pre>
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a file containing the exported agent. This field is populated
        # only if `agent_uri` is specified in `ExportAgentRequest`.
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # Represents an intent.
      # Intents convert a number of user expressions or patterns into an action. An
      # action is an extraction of a user command or sentence semantics.
      class GoogleCloudDialogflowV2Intent
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the action associated with the intent.
        # Note: The action name must not contain whitespaces.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Optional. The list of platforms for which the first response will be
        # taken from among the messages assigned to the DEFAULT_PLATFORM.
        # Corresponds to the JSON property `defaultResponsePlatforms`
        # @return [Array<String>]
        attr_accessor :default_response_platforms
      
        # Required. The name of this intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The collection of event names that trigger the intent.
        # If the collection of input contexts is not empty, all of the contexts must
        # be present in the active user session for an event to trigger this intent.
        # Corresponds to the JSON property `events`
        # @return [Array<String>]
        attr_accessor :events
      
        # Read-only. Information about all followup intents that have this intent as
        # a direct or indirect parent. We populate this field only in the output.
        # Corresponds to the JSON property `followupIntentInfo`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentFollowupIntentInfo>]
        attr_accessor :followup_intent_info
      
        # Optional. The list of context names required for this intent to be
        # triggered.
        # Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
        # Corresponds to the JSON property `inputContextNames`
        # @return [Array<String>]
        attr_accessor :input_context_names
      
        # Optional. Indicates whether this is a fallback intent.
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # Optional. The collection of rich messages corresponding to the
        # `Response` field in the Dialogflow console.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :messages
      
        # Optional. Indicates whether Machine Learning is disabled for the intent.
        # Note: If `ml_diabled` setting is set to true, then this intent is not
        # taken into account during inference in `ML ONLY` match mode. Also,
        # auto-markup in the UI is turned off.
        # Corresponds to the JSON property `mlDisabled`
        # @return [Boolean]
        attr_accessor :ml_disabled
        alias_method :ml_disabled?, :ml_disabled
      
        # Required for all methods except `create` (`create` populates the name
        # automatically.
        # The unique identifier of this intent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of contexts that are activated when the intent
        # is matched. Context messages in this collection should not set the
        # parameters field. Setting the `lifespan_count` to 0 will reset the context
        # when the intent is matched.
        # Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # Optional. The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentParameter>]
        attr_accessor :parameters
      
        # Read-only after creation. The unique identifier of the parent intent in the
        # chain of followup intents. You can set this field when creating an intent,
        # for example with CreateIntent or BatchUpdateIntents, in order to
        # make this intent a followup intent.
        # It identifies the parent followup intent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        # Optional. The priority of this intent. Higher numbers represent higher
        # priorities. Zero or negative numbers mean that the intent is disabled.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Optional. Indicates whether to delete all contexts in the current
        # session when this intent is matched.
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # Read-only. The unique identifier of the root intent in the chain of
        # followup intents. It identifies the correct followup intents chain for
        # this intent. We populate this field only in the output.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `rootFollowupIntentName`
        # @return [String]
        attr_accessor :root_followup_intent_name
      
        # Optional. The collection of examples/templates that the agent is
        # trained on.
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        # Optional. Indicates whether webhooks are enabled for the intent.
        # Corresponds to the JSON property `webhookState`
        # @return [String]
        attr_accessor :webhook_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @default_response_platforms = args[:default_response_platforms] if args.key?(:default_response_platforms)
          @display_name = args[:display_name] if args.key?(:display_name)
          @events = args[:events] if args.key?(:events)
          @followup_intent_info = args[:followup_intent_info] if args.key?(:followup_intent_info)
          @input_context_names = args[:input_context_names] if args.key?(:input_context_names)
          @is_fallback = args[:is_fallback] if args.key?(:is_fallback)
          @messages = args[:messages] if args.key?(:messages)
          @ml_disabled = args[:ml_disabled] if args.key?(:ml_disabled)
          @name = args[:name] if args.key?(:name)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
          @priority = args[:priority] if args.key?(:priority)
          @reset_contexts = args[:reset_contexts] if args.key?(:reset_contexts)
          @root_followup_intent_name = args[:root_followup_intent_name] if args.key?(:root_followup_intent_name)
          @training_phrases = args[:training_phrases] if args.key?(:training_phrases)
          @webhook_state = args[:webhook_state] if args.key?(:webhook_state)
        end
      end
      
      # Represents a single followup intent in the chain.
      class GoogleCloudDialogflowV2IntentFollowupIntentInfo
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the followup intent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `followupIntentName`
        # @return [String]
        attr_accessor :followup_intent_name
      
        # The unique identifier of the followup intent's parent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @followup_intent_name = args[:followup_intent_name] if args.key?(:followup_intent_name)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
        end
      end
      
      # Corresponds to the `Response` field in the Dialogflow console.
      class GoogleCloudDialogflowV2IntentMessage
        include Google::Apis::Core::Hashable
      
        # The basic card message. Useful for displaying information.
        # Corresponds to the JSON property `basicCard`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # The card response message.
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageCard]
        attr_accessor :card
      
        # The card for presenting a carousel of options to select from.
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # The suggestion chip message that allows the user to jump out to the app
        # or website associated with this agent.
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # The card for presenting a list of options to select from.
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageListSelect]
        attr_accessor :list_select
      
        # Returns a response containing a custom, platform-specific payload.
        # See the Intent.Message.Platform type for a description of the
        # structure that may be required for your platform.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. The platform that this message is intended for.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The quick replies response message.
        # Corresponds to the JSON property `quickReplies`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # The collection of simple response candidates.
        # This message in `QueryResult.fulfillment_messages` and
        # `WebhookResponse.fulfillment_messages` should contain only one
        # `SimpleResponse`.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # The collection of suggestions.
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_card = args[:basic_card] if args.key?(:basic_card)
          @card = args[:card] if args.key?(:card)
          @carousel_select = args[:carousel_select] if args.key?(:carousel_select)
          @image = args[:image] if args.key?(:image)
          @link_out_suggestion = args[:link_out_suggestion] if args.key?(:link_out_suggestion)
          @list_select = args[:list_select] if args.key?(:list_select)
          @payload = args[:payload] if args.key?(:payload)
          @platform = args[:platform] if args.key?(:platform)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The basic card message. Useful for displaying information.
      class GoogleCloudDialogflowV2IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Required, unless image is present. The body text of the card.
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @formatted_text = args[:formatted_text] if args.key?(:formatted_text)
          @image = args[:image] if args.key?(:image)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The button object that appears at the bottom of a card.
      class GoogleCloudDialogflowV2IntentMessageBasicCardButton
        include Google::Apis::Core::Hashable
      
        # Opens the given URI.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction]
        attr_accessor :open_uri_action
      
        # Required. The title of the button.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @open_uri_action = args[:open_uri_action] if args.key?(:open_uri_action)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Opens the given URI.
      class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
        include Google::Apis::Core::Hashable
      
        # Required. The HTTP or HTTPS scheme URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The card response message.
      class GoogleCloudDialogflowV2IntentMessageCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageCardButton>]
        attr_accessor :buttons
      
        # Optional. The public URI to an image file for the card.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Optional. Contains information about a button.
      class GoogleCloudDialogflowV2IntentMessageCardButton
        include Google::Apis::Core::Hashable
      
        # Optional. The text to send back to the Dialogflow API or a URI to
        # open.
        # Corresponds to the JSON property `postback`
        # @return [String]
        attr_accessor :postback
      
        # Optional. The text to show on the button.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postback = args[:postback] if args.key?(:postback)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The card for presenting a carousel of options to select from.
      class GoogleCloudDialogflowV2IntentMessageCarouselSelect
        include Google::Apis::Core::Hashable
      
        # Required. Carousel items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # An item in the carousel.
      class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The body text of the card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a
        # dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. Title of the carousel item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The image response message.
      class GoogleCloudDialogflowV2IntentMessageImage
        include Google::Apis::Core::Hashable
      
        # Optional. A text description of the image to be used for accessibility,
        # e.g., screen readers.
        # Corresponds to the JSON property `accessibilityText`
        # @return [String]
        attr_accessor :accessibility_text
      
        # Optional. The public URI to an image file.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility_text = args[:accessibility_text] if args.key?(:accessibility_text)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # The suggestion chip message that allows the user to jump out to the app
      # or website associated with this agent.
      class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The name of the app or site this chip is linking to.
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # Required. The URI of the app or site to open when the user taps the
        # suggestion chip.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_name = args[:destination_name] if args.key?(:destination_name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The card for presenting a list of options to select from.
      class GoogleCloudDialogflowV2IntentMessageListSelect
        include Google::Apis::Core::Hashable
      
        # Required. List items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageListSelectItem>]
        attr_accessor :items
      
        # Optional. The overall title of the list.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # An item in the list.
      class GoogleCloudDialogflowV2IntentMessageListSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The main text describing the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a
        # dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. The title of the list item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The quick replies response message.
      class GoogleCloudDialogflowV2IntentMessageQuickReplies
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of quick replies.
        # Corresponds to the JSON property `quickReplies`
        # @return [Array<String>]
        attr_accessor :quick_replies
      
        # Optional. The title of the collection of quick replies.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Additional info about the select item for when it is triggered in a
      # dialog.
      class GoogleCloudDialogflowV2IntentMessageSelectItemInfo
        include Google::Apis::Core::Hashable
      
        # Required. A unique key that will be sent back to the agent if this
        # response is given.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. A list of synonyms that can also be used to trigger this
        # item in dialog.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
        end
      end
      
      # The simple response message containing speech or text.
      class GoogleCloudDialogflowV2IntentMessageSimpleResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The text to display.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # One of text_to_speech or ssml must be provided. Structured spoken
        # response to the user in the SSML format. Mutually exclusive with
        # text_to_speech.
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # One of text_to_speech or ssml must be provided. The plain text of the
        # speech output. Mutually exclusive with ssml.
        # Corresponds to the JSON property `textToSpeech`
        # @return [String]
        attr_accessor :text_to_speech
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_text = args[:display_text] if args.key?(:display_text)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text_to_speech = args[:text_to_speech] if args.key?(:text_to_speech)
        end
      end
      
      # The collection of simple response candidates.
      # This message in `QueryResult.fulfillment_messages` and
      # `WebhookResponse.fulfillment_messages` should contain only one
      # `SimpleResponse`.
      class GoogleCloudDialogflowV2IntentMessageSimpleResponses
        include Google::Apis::Core::Hashable
      
        # Required. The list of simple responses.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponse>]
        attr_accessor :simple_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
        end
      end
      
      # The suggestion chip message that the user can tap to quickly post a reply
      # to the conversation.
      class GoogleCloudDialogflowV2IntentMessageSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The text shown the in the suggestion chip.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The collection of suggestions.
      class GoogleCloudDialogflowV2IntentMessageSuggestions
        include Google::Apis::Core::Hashable
      
        # Required. The list of suggested replies.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessageSuggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # The text response message.
      class GoogleCloudDialogflowV2IntentMessageText
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of the agent's responses.
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents intent parameters.
      class GoogleCloudDialogflowV2IntentParameter
        include Google::Apis::Core::Hashable
      
        # Optional. The default value to use when the `value` yields an empty
        # result.
        # Default values can be extracted from contexts by using the following
        # syntax: `#context_name.parameter_name`.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # Required. The name of the parameter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The name of the entity type, prefixed with `@`, that
        # describes values of the parameter. If the parameter is
        # required, this must be provided.
        # Corresponds to the JSON property `entityTypeDisplayName`
        # @return [String]
        attr_accessor :entity_type_display_name
      
        # Optional. Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Optional. Indicates whether the parameter is required. That is,
        # whether the intent cannot be completed without collecting the parameter
        # value.
        # Corresponds to the JSON property `mandatory`
        # @return [Boolean]
        attr_accessor :mandatory
        alias_method :mandatory?, :mandatory
      
        # The unique identifier of this parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of prompts that the agent can present to the
        # user in order to collect value for the parameter.
        # Corresponds to the JSON property `prompts`
        # @return [Array<String>]
        attr_accessor :prompts
      
        # Optional. The definition of the parameter value. It can be:
        # - a constant string,
        # - a parameter value defined as `$parameter_name`,
        # - an original parameter value defined as `$parameter_name.original`,
        # - a parameter value from some context defined as
        # `#context_name.parameter_name`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type_display_name = args[:entity_type_display_name] if args.key?(:entity_type_display_name)
          @is_list = args[:is_list] if args.key?(:is_list)
          @mandatory = args[:mandatory] if args.key?(:mandatory)
          @name = args[:name] if args.key?(:name)
          @prompts = args[:prompts] if args.key?(:prompts)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents an example or template that the agent is trained on.
      class GoogleCloudDialogflowV2IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier of this training phrase.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The collection of training phrase parts (can be annotated).
        # Fields: `entity_type`, `alias` and `user_defined` should be populated
        # only for the annotated parts of the training phrase.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # Optional. Indicates how many times this example or template was added to
        # the intent. Each time a developer adds an existing sample by editing an
        # intent or training, this counter is increased.
        # Corresponds to the JSON property `timesAddedCount`
        # @return [Fixnum]
        attr_accessor :times_added_count
      
        # Required. The type of the training phrase.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parts = args[:parts] if args.key?(:parts)
          @times_added_count = args[:times_added_count] if args.key?(:times_added_count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a part of a training phrase.
      class GoogleCloudDialogflowV2IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # Optional. The parameter name for the value extracted from the
        # annotated part of the example.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Optional. The entity type name prefixed with `@`. This field is
        # required for the annotated part of the text and applies only to
        # examples.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Required. The text corresponding to the example or template,
        # if there are no annotations. For
        # annotated examples, it is the text for one of the example's parts.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optional. Indicates whether the text was manually annotated by the
        # developer.
        # Corresponds to the JSON property `userDefined`
        # @return [Boolean]
        attr_accessor :user_defined
        alias_method :user_defined?, :user_defined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @text = args[:text] if args.key?(:text)
          @user_defined = args[:user_defined] if args.key?(:user_defined)
        end
      end
      
      # Represents the contents of the original request that was passed to
      # the `[Streaming]DetectIntent` call.
      class GoogleCloudDialogflowV2OriginalDetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. This field is set to the value of the `QueryParameters.payload`
        # field passed in the request. Some integrations that query a Dialogflow
        # agent may provide additional information in the payload.
        # In particular for the Telephony Gateway this field has the form:
        # <pre>`
        # "telephony": `
        # "caller_id": "+18558363987"
        # `
        # `</pre>
        # Note: The caller ID field (`caller_id`) will be redacted for Standard
        # Edition agents and populated with the caller ID in [E.164
        # format](https://en.wikipedia.org/wiki/E.164) for Enterprise Edition agents.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # The source of this request, e.g., `google`, `facebook`, `slack`. It is set
        # by Dialogflow-owned servers.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Optional. The version of the protocol used for this request.
        # This field is AoG-specific.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @source = args[:source] if args.key?(:source)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents the result of conversational query or event processing.
      class GoogleCloudDialogflowV2QueryResult
        include Google::Apis::Core::Hashable
      
        # The action name from the matched intent.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # This field is set to:
        # - `false` if the matched intent has required parameters and not all of
        # the required parameter values have been collected.
        # - `true` if all required parameter values have been collected, or if the
        # matched intent doesn't contain any required parameters.
        # Corresponds to the JSON property `allRequiredParamsPresent`
        # @return [Boolean]
        attr_accessor :all_required_params_present
        alias_method :all_required_params_present?, :all_required_params_present
      
        # The free-form diagnostic info. For example, this field
        # could contain webhook call latency.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # The collection of rich messages to present to the user.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # The text to be pronounced to the user or shown on the screen.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # Represents an intent.
        # Intents convert a number of user expressions or patterns into an action. An
        # action is an extraction of a user command or sentence semantics.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2Intent]
        attr_accessor :intent
      
        # The intent detection confidence. Values range from 0.0
        # (completely uncertain) to 1.0 (completely certain).
        # If there are `multiple knowledge_answers` messages, this value is set to
        # the greatest `knowledgeAnswers.match_confidence` value in the list.
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # The language that was triggered during intent detection.
        # See [Language Support](https://dialogflow.com/docs/reference/language)
        # for a list of the currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The collection of output contexts. If applicable,
        # `output_contexts.parameters` contains entries with name
        # `<parameter name>.original` containing the original parameter values
        # before the query.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # The collection of extracted parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # The original conversational query text:
        # - If natural language text was provided as input, `query_text` contains
        # a copy of the input.
        # - If natural language speech audio was provided as input, `query_text`
        # contains the speech recognition result. If speech recognizer produced
        # multiple alternatives, a particular one is picked.
        # - If an event was provided as input, `query_text` is not set.
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        # The Speech recognition confidence between 0.0 and 1.0. A higher number
        # indicates an estimated greater likelihood that the recognized words are
        # correct. The default of 0.0 is a sentinel value indicating that confidence
        # was not set.
        # This field is not guaranteed to be accurate or set. In particular this
        # field isn't set for StreamingDetectIntent since the streaming endpoint has
        # separate confidence estimates per portion of the audio in
        # StreamingRecognitionResult.
        # Corresponds to the JSON property `speechRecognitionConfidence`
        # @return [Float]
        attr_accessor :speech_recognition_confidence
      
        # If the query was fulfilled by a webhook call, this field is set to the
        # value of the `payload` field returned in the webhook response.
        # Corresponds to the JSON property `webhookPayload`
        # @return [Hash<String,Object>]
        attr_accessor :webhook_payload
      
        # If the query was fulfilled by a webhook call, this field is set to the
        # value of the `source` field returned in the webhook response.
        # Corresponds to the JSON property `webhookSource`
        # @return [String]
        attr_accessor :webhook_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @all_required_params_present = args[:all_required_params_present] if args.key?(:all_required_params_present)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @intent = args[:intent] if args.key?(:intent)
          @intent_detection_confidence = args[:intent_detection_confidence] if args.key?(:intent_detection_confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @query_text = args[:query_text] if args.key?(:query_text)
          @speech_recognition_confidence = args[:speech_recognition_confidence] if args.key?(:speech_recognition_confidence)
          @webhook_payload = args[:webhook_payload] if args.key?(:webhook_payload)
          @webhook_source = args[:webhook_source] if args.key?(:webhook_source)
        end
      end
      
      # The request message for a webhook call.
      class GoogleCloudDialogflowV2WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Represents the contents of the original request that was passed to
        # the `[Streaming]DetectIntent` call.
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2QueryResult]
        attr_accessor :query_result
      
        # The unique identifier of the response. Contains the same value as
        # `[Streaming]DetectIntentResponse.response_id`.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # The unique identifier of detectIntent request session.
        # Can be used to identify end-user inside webhook implementation.
        # Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
        # Corresponds to the JSON property `session`
        # @return [String]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @original_detect_intent_request = args[:original_detect_intent_request] if args.key?(:original_detect_intent_request)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # The response message for a webhook call.
      class GoogleCloudDialogflowV2WebhookResponse
        include Google::Apis::Core::Hashable
      
        # Events allow for matching intents by event name instead of the natural
        # language input. For instance, input `<event: ` name: “welcome_event”,
        # parameters: ` name: “Sam” ` `>` can trigger a personalized welcome response.
        # The parameter `name` may be used by the agent in the response:
        # `“Hello #welcome_event.name! What can I do for you today?”`.
        # Corresponds to the JSON property `followupEventInput`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2EventInput]
        attr_accessor :followup_event_input
      
        # Optional. The collection of rich messages to present to the user. This
        # value is passed directly to `QueryResult.fulfillment_messages`.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # Optional. The text to be shown on the screen. This value is passed directly
        # to `QueryResult.fulfillment_text`.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # Optional. The collection of output contexts. This value is passed directly
        # to `QueryResult.output_contexts`.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # Optional. This value is passed directly to `QueryResult.webhook_payload`.
        # See the related `fulfillment_messages[i].payload field`, which may be used
        # as an alternative to this field.
        # This field can be used for Actions on Google responses.
        # It should have a structure similar to the JSON message shown here. For more
        # information, see
        # [Actions on Google Webhook
        # Format](https://developers.google.com/actions/dialogflow/webhook)
        # <pre>`
        # "google": `
        # "expectUserResponse": true,
        # "richResponse": `
        # "items": [
        # `
        # "simpleResponse": `
        # "textToSpeech": "this is a simple response"
        # `
        # `
        # ]
        # `
        # `
        # `</pre>
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. This value is passed directly to `QueryResult.webhook_source`.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @followup_event_input = args[:followup_event_input] if args.key?(:followup_event_input)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @payload = args[:payload] if args.key?(:payload)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # The request message for Conversations.AddConversationPhoneNumber.
      class GoogleCloudDialogflowV2beta1AddConversationPhoneNumberRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a conversational agent.
      class GoogleCloudDialogflowV2beta1Agent
        include Google::Apis::Core::Hashable
      
        # Optional. The URI of the agent's avatar.
        # Avatars are used throughout the Dialogflow console and in the self-hosted
        # [Web Demo](https://dialogflow.com/docs/integrations/web-demo) integration.
        # Corresponds to the JSON property `avatarUri`
        # @return [String]
        attr_accessor :avatar_uri
      
        # Optional. To filter out false positive results and still get variety in
        # matched natural language inputs for your agent, you can tune the machine
        # learning classification threshold. If the returned score value is less than
        # the threshold value, then a fallback intent is be triggered or, if there
        # are no fallback intents defined, no intent will be triggered. The score
        # values range from 0.0 (completely uncertain) to 1.0 (completely certain).
        # If set to 0.0, the default of 0.3 is used.
        # Corresponds to the JSON property `classificationThreshold`
        # @return [Float]
        attr_accessor :classification_threshold
      
        # Required. The default language of the agent as a language tag. See
        # [Language Support](https://dialogflow.com/docs/reference/language) for a
        # list of the currently supported language codes.
        # This field cannot be set by the `Update` method.
        # Corresponds to the JSON property `defaultLanguageCode`
        # @return [String]
        attr_accessor :default_language_code
      
        # Optional. The description of this agent.
        # The maximum length is 500 characters. If exceeded, the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of this agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Determines whether this agent should log conversation queries.
        # Corresponds to the JSON property `enableLogging`
        # @return [Boolean]
        attr_accessor :enable_logging
        alias_method :enable_logging?, :enable_logging
      
        # Optional. Determines how intents are detected from user queries.
        # Corresponds to the JSON property `matchMode`
        # @return [String]
        attr_accessor :match_mode
      
        # Required. The project of this agent.
        # Format: `projects/<Project ID>`.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Optional. The list of all languages supported by this agent (except for the
        # `default_language_code`).
        # Corresponds to the JSON property `supportedLanguageCodes`
        # @return [Array<String>]
        attr_accessor :supported_language_codes
      
        # Required. The time zone of this agent from the
        # [time zone database](https://www.iana.org/time-zones), e.g.,
        # America/New_York, Europe/Paris.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avatar_uri = args[:avatar_uri] if args.key?(:avatar_uri)
          @classification_threshold = args[:classification_threshold] if args.key?(:classification_threshold)
          @default_language_code = args[:default_language_code] if args.key?(:default_language_code)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_logging = args[:enable_logging] if args.key?(:enable_logging)
          @match_mode = args[:match_mode] if args.key?(:match_mode)
          @parent = args[:parent] if args.key?(:parent)
          @supported_language_codes = args[:supported_language_codes] if args.key?(:supported_language_codes)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # The request message for Conversations.AnalyzeContent.
      class GoogleCloudDialogflowV2beta1AnalyzeContentRequest
        include Google::Apis::Core::Hashable
      
        # Represents the natural language speech audio to be processed.
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InputAudio]
        attr_accessor :audio
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `replyAudioConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OutputAudioConfig]
        attr_accessor :reply_audio_config
      
        # Represents the natural language text to be processed.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InputText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @reply_audio_config = args[:reply_audio_config] if args.key?(:reply_audio_config)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The response message for Conversations.AnalyzeContent.
      class GoogleCloudDialogflowV2beta1AnalyzeContentResponse
        include Google::Apis::Core::Hashable
      
        # Represent a response from an automated agent.
        # Corresponds to the JSON property `automatedAgentReply`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AutomatedAgentReply]
        attr_accessor :automated_agent_reply
      
        # Represents the natural language speech audio to be played to the end user.
        # Corresponds to the JSON property `replyAudio`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OutputAudio]
        attr_accessor :reply_audio
      
        # Output only. The output text content.
        # This field is set if the automated agent responded with text to show to
        # the user.
        # Corresponds to the JSON property `replyText`
        # @return [String]
        attr_accessor :reply_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_agent_reply = args[:automated_agent_reply] if args.key?(:automated_agent_reply)
          @reply_audio = args[:reply_audio] if args.key?(:reply_audio)
          @reply_text = args[:reply_text] if args.key?(:reply_text)
        end
      end
      
      # Defines article suggestions that a human agent assistant can provide.
      class GoogleCloudDialogflowV2beta1ArticleSuggestionConfig
        include Google::Apis::Core::Hashable
      
        # Required. Settings for knowledge base, Format:
        # `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # Corresponds to the JSON property `knowledgeBaseName`
        # @return [String]
        attr_accessor :knowledge_base_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @knowledge_base_name = args[:knowledge_base_name] if args.key?(:knowledge_base_name)
        end
      end
      
      # Defines the Automated Agent to connect to a conversation.
      class GoogleCloudDialogflowV2beta1AutomatedAgentConfig
        include Google::Apis::Core::Hashable
      
        # Required. ID of the Dialogflow agent environment to use.
        # This project needs to either be the same project as the conversation or you
        # need to grant `service-<Conversation Project
        # Number>@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow API
        # Service Agent` role in this project.
        # Format: `projects/<Project ID>/agent/environments/<Environment ID or '-'>`
        # If environment is not specified, the default `draft` environment is
        # used. Refer to
        # [DetectIntentRequest](/dialogflow-enterprise/docs/reference/rpc/google.cloud.
        # dialogflow.v2beta1#google.cloud.dialogflow.v2beta1.DetectIntentRequest)
        # for more details.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
        end
      end
      
      # Represent a response from an automated agent.
      class GoogleCloudDialogflowV2beta1AutomatedAgentReply
        include Google::Apis::Core::Hashable
      
        # The message returned from the DetectIntent method.
        # Corresponds to the JSON property `detectIntentResponse`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1DetectIntentResponse]
        attr_accessor :detect_intent_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detect_intent_response = args[:detect_intent_response] if args.key?(:detect_intent_response)
        end
      end
      
      # The request message for EntityTypes.BatchCreateEntities.
      class GoogleCloudDialogflowV2beta1BatchCreateEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The entities to create.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Optional. The language of entity synonyms defined in `entities`. If not
        # specified, the agent's default language is used.
        # [More than a dozen
        # languages](https://dialogflow.com/docs/reference/language) are supported.
        # Note: languages must be enabled in the agent, before they can be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # The request message for EntityTypes.BatchDeleteEntities.
      class GoogleCloudDialogflowV2beta1BatchDeleteEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The canonical `values` of the entities to delete. Note that
        # these are not fully-qualified names, i.e. they don't start with
        # `projects/<Project ID>`.
        # Corresponds to the JSON property `entityValues`
        # @return [Array<String>]
        attr_accessor :entity_values
      
        # Optional. The language of entity synonyms defined in `entities`. If not
        # specified, the agent's default language is used.
        # [More than a dozen
        # languages](https://dialogflow.com/docs/reference/language) are supported.
        # Note: languages must be enabled in the agent, before they can be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_values = args[:entity_values] if args.key?(:entity_values)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # The request message for EntityTypes.BatchDeleteEntityTypes.
      class GoogleCloudDialogflowV2beta1BatchDeleteEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The names entity types to delete. All names must point to the
        # same agent as `parent`.
        # Corresponds to the JSON property `entityTypeNames`
        # @return [Array<String>]
        attr_accessor :entity_type_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type_names = args[:entity_type_names] if args.key?(:entity_type_names)
        end
      end
      
      # The request message for Intents.BatchDeleteIntents.
      class GoogleCloudDialogflowV2beta1BatchDeleteIntentsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The collection of intents to delete. Only intent `name` must be
        # filled in.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # The request message for EntityTypes.BatchUpdateEntities.
      class GoogleCloudDialogflowV2beta1BatchUpdateEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The entities to update or create.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Optional. The language of entity synonyms defined in `entities`. If not
        # specified, the agent's default language is used.
        # [More than a dozen
        # languages](https://dialogflow.com/docs/reference/language) are supported.
        # Note: languages must be enabled in the agent, before they can be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. The mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The request message for EntityTypes.BatchUpdateEntityTypes.
      class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # This message is a wrapper around a collection of entity types.
        # Corresponds to the JSON property `entityTypeBatchInline`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityTypeBatch]
        attr_accessor :entity_type_batch_inline
      
        # The URI to a Google Cloud Storage file containing entity types to update
        # or create. The file format can either be a serialized proto (of
        # EntityBatch type) or a JSON object. Note: The URI must start with
        # "gs://".
        # Corresponds to the JSON property `entityTypeBatchUri`
        # @return [String]
        attr_accessor :entity_type_batch_uri
      
        # Optional. The language of entity synonyms defined in `entity_types`. If not
        # specified, the agent's default language is used.
        # [More than a dozen
        # languages](https://dialogflow.com/docs/reference/language) are supported.
        # Note: languages must be enabled in the agent, before they can be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. The mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_type_batch_inline = args[:entity_type_batch_inline] if args.key?(:entity_type_batch_inline)
          @entity_type_batch_uri = args[:entity_type_batch_uri] if args.key?(:entity_type_batch_uri)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The response message for EntityTypes.BatchUpdateEntityTypes.
      class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created entity types.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # The request message for Intents.BatchUpdateIntents.
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsRequest
        include Google::Apis::Core::Hashable
      
        # This message is a wrapper around a collection of intents.
        # Corresponds to the JSON property `intentBatchInline`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentBatch]
        attr_accessor :intent_batch_inline
      
        # The URI to a Google Cloud Storage file containing intents to update or
        # create. The file format can either be a serialized proto (of IntentBatch
        # type) or JSON object. Note: The URI must start with "gs://".
        # Corresponds to the JSON property `intentBatchUri`
        # @return [String]
        attr_accessor :intent_batch_uri
      
        # Optional. The resource view to apply to the returned intent.
        # Corresponds to the JSON property `intentView`
        # @return [String]
        attr_accessor :intent_view
      
        # Optional. The language of training phrases, parameters and rich messages
        # defined in `intents`. If not specified, the agent's default language is
        # used. [More than a dozen
        # languages](https://dialogflow.com/docs/reference/language) are supported.
        # Note: languages must be enabled in the agent, before they can be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. The mask to control which fields get updated.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent_batch_inline = args[:intent_batch_inline] if args.key?(:intent_batch_inline)
          @intent_batch_uri = args[:intent_batch_uri] if args.key?(:intent_batch_uri)
          @intent_view = args[:intent_view] if args.key?(:intent_view)
          @language_code = args[:language_code] if args.key?(:language_code)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The response message for Intents.BatchUpdateIntents.
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created intents.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # The request message for PhoneNumberOrders.CancelPhoneNumberOrder.
      class GoogleCloudDialogflowV2beta1CancelPhoneNumberOrderRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for
      # HumanAgentAssistants.RequestCompileSuggestions.
      class GoogleCloudDialogflowV2beta1CompileSuggestionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. List of messages in a conversation in chronological order.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Message>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # The response message for
      # HumanAgentAssistants.RequestCompileSuggestions
      class GoogleCloudDialogflowV2beta1CompileSuggestionsResponse
        include Google::Apis::Core::Hashable
      
        # Required.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Suggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # The request message for Conversations.CompleteConversation.
      class GoogleCloudDialogflowV2beta1CompleteConversationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a context.
      class GoogleCloudDialogflowV2beta1Context
        include Google::Apis::Core::Hashable
      
        # Optional. The number of conversational query requests after which the
        # context expires. If set to `0` (the default) the context expires
        # immediately. Contexts expire automatically after 10 minutes even if there
        # are no matching queries.
        # Corresponds to the JSON property `lifespanCount`
        # @return [Fixnum]
        attr_accessor :lifespan_count
      
        # Required. The unique identifier of the context. Format:
        # `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`,
        # or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        # ID>/sessions/<Session ID>/contexts/<Context ID>`. The `Context ID` is
        # always converted to lowercase. If `Environment ID` is not specified, we
        # assume default 'draft' environment. If `User ID` is not specified, we
        # assume default '-' user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of parameters associated with this context.
        # Refer to [this doc](https://dialogflow.com/docs/actions-and-parameters) for
        # syntax.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lifespan_count = args[:lifespan_count] if args.key?(:lifespan_count)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Represents a conversation.
      # A conversation is an interaction between an agent, including live agents
      # and Dialogflow agents, and a support customer. Conversations can
      # include phone calls and text-based chat sessions.
      class GoogleCloudDialogflowV2beta1Conversation
        include Google::Apis::Core::Hashable
      
        # Required. The Conversation Profile to be used to configure this
        # Conversation. This field cannot be updated.
        # Format: `projects/<Project ID>/conversationProfiles/<Conversation Profile
        # ID>`.
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # Output only. The time the conversation was finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The current state of the Conversation.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # The unique identifier of this conversation.
        # Required for all methods except `create` (`create` populates the name
        # automatically).
        # Format: `projects/<Project ID>/conversations/<Conversation ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a phone number for telephony integration. It allows for connecting
        # a particular conversation over telephony.
        # Corresponds to the JSON property `phoneNumber`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationPhoneNumber]
        attr_accessor :phone_number
      
        # Output only. The time the conversation was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @end_time = args[:end_time] if args.key?(:end_time)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents a phone number for telephony integration. It allows for connecting
      # a particular conversation over telephony.
      class GoogleCloudDialogflowV2beta1ConversationPhoneNumber
        include Google::Apis::Core::Hashable
      
        # Output only. The phone number to connect to this conversation.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Defines the services to connect to incoming Dialogflow conversations.
      class GoogleCloudDialogflowV2beta1ConversationProfile
        include Google::Apis::Core::Hashable
      
        # Defines the Automated Agent to connect to a conversation.
        # Corresponds to the JSON property `automatedAgentConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AutomatedAgentConfig]
        attr_accessor :automated_agent_config
      
        # Required. Human readable name for this profile. Max length 1024 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Defines the Human Agent Assistant to connect to a conversation.
        # Corresponds to the JSON property `humanAgentAssistantConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig]
        attr_accessor :human_agent_assistant_config
      
        # Defines logging behavior for conversation lifecycle events.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1LoggingConfig]
        attr_accessor :logging_config
      
        # Required for all methods except `create` (`create` populates the name
        # automatically).
        # The unique identifier of this conversation profile.
        # Format: `projects/<Project ID>/conversationProfiles/<Conversation Profile
        # ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines notification behavior for conversation lifecycle events.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1NotificationConfig]
        attr_accessor :notification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_agent_config = args[:automated_agent_config] if args.key?(:automated_agent_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @human_agent_assistant_config = args[:human_agent_assistant_config] if args.key?(:human_agent_assistant_config)
          @logging_config = args[:logging_config] if args.key?(:logging_config)
          @name = args[:name] if args.key?(:name)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
        end
      end
      
      # The request to detect user's intent.
      class GoogleCloudDialogflowV2beta1DetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The natural language speech audio to be processed. This field
        # should be populated iff `query_input` is set to an input audio config.
        # A single request can contain up to 1 minute of speech audio data.
        # Corresponds to the JSON property `inputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :input_audio
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # Represents the query input. It can contain either:
        # 1.  An audio config which
        # instructs the speech recognizer how to process the speech audio.
        # 2.  A conversational query in the form of text,.
        # 3.  An event that specifies which intent to trigger.
        # Corresponds to the JSON property `queryInput`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1QueryInput]
        attr_accessor :query_input
      
        # Represents the parameters of the conversational query.
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1QueryParameters]
        attr_accessor :query_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_audio = args[:input_audio] if args.key?(:input_audio)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @query_input = args[:query_input] if args.key?(:query_input)
          @query_params = args[:query_params] if args.key?(:query_params)
        end
      end
      
      # The message returned from the DetectIntent method.
      class GoogleCloudDialogflowV2beta1DetectIntentResponse
        include Google::Apis::Core::Hashable
      
        # If Knowledge Connectors are enabled, there could be more than one result
        # returned for a given query or event, and this field will contain all
        # results except for the top one, which is captured in query_result. The
        # alternative results are ordered by decreasing
        # `QueryResult.intent_detection_confidence`. If Knowledge Connectors are
        # disabled, this field will be empty until multiple responses for regular
        # intents are supported, at which point those additional results will be
        # surfaced here.
        # Corresponds to the JSON property `alternativeQueryResults`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1QueryResult>]
        attr_accessor :alternative_query_results
      
        # The audio data bytes encoded as specified in the request.
        # Corresponds to the JSON property `outputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :output_audio
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1QueryResult]
        attr_accessor :query_result
      
        # The unique identifier of the response. It can be used to
        # locate a response in the training example set or for reporting issues.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `webhookStatus`
        # @return [Google::Apis::DialogflowV2beta1::GoogleRpcStatus]
        attr_accessor :webhook_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_query_results = args[:alternative_query_results] if args.key?(:alternative_query_results)
          @output_audio = args[:output_audio] if args.key?(:output_audio)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
          @webhook_status = args[:webhook_status] if args.key?(:webhook_status)
        end
      end
      
      # A document resource.
      # Note: resource `projects.agent.knowledgeBases.documents` is deprecated,
      # please use `projects.knowledgeBases.documents` instead.
      class GoogleCloudDialogflowV2beta1Document
        include Google::Apis::Core::Hashable
      
        # The raw content of the document. This field is only permitted for
        # EXTRACTIVE_QA and FAQ knowledge types.
        # Note: This field is in the process of being deprecated, please use
        # raw_content instead.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The URI where the file content is located.
        # For documents stored in Google Cloud Storage, these URIs must have
        # the form `gs://<bucket-name>/<object-name>`.
        # NOTE: External URLs must correspond to public webpages, i.e., they must
        # be indexed by Google Search. In particular, URLs for showing documents in
        # Google Cloud Storage (i.e. the URL in your browser) are not supported.
        # Instead use the `gs://` format URI described above.
        # Corresponds to the JSON property `contentUri`
        # @return [String]
        attr_accessor :content_uri
      
        # Required. The display name of the document. The name must be 1024 bytes or
        # less; otherwise, the creation request fails.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The knowledge type of document content.
        # Corresponds to the JSON property `knowledgeTypes`
        # @return [Array<String>]
        attr_accessor :knowledge_types
      
        # Required. The MIME type of this document.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The document resource name.
        # The name must be empty when creating a document.
        # Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        # ID>/documents/<Document ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The raw content of the document. This field is only permitted for
        # EXTRACTIVE_QA and FAQ knowledge types.
        # Corresponds to the JSON property `rawContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @content_uri = args[:content_uri] if args.key?(:content_uri)
          @display_name = args[:display_name] if args.key?(:display_name)
          @knowledge_types = args[:knowledge_types] if args.key?(:knowledge_types)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
          @raw_content = args[:raw_content] if args.key?(:raw_content)
        end
      end
      
      # Represents an entity type.
      # Entity types serve as a tool for extracting parameter values from natural
      # language queries.
      class GoogleCloudDialogflowV2beta1EntityType
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether the entity type can be automatically
        # expanded.
        # Corresponds to the JSON property `autoExpansionMode`
        # @return [String]
        attr_accessor :auto_expansion_mode
      
        # Required. The name of the entity type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The collection of entities associated with the entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates the kind of entity type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required for all methods except `create` (`create` populates the name
        # automatically.
        # The unique identifier of the entity type. Format:
        # `projects/<Project ID>/agent/entityTypes/<Entity Type ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_expansion_mode = args[:auto_expansion_mode] if args.key?(:auto_expansion_mode)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entities = args[:entities] if args.key?(:entities)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # This message is a wrapper around a collection of entity types.
      class GoogleCloudDialogflowV2beta1EntityTypeBatch
        include Google::Apis::Core::Hashable
      
        # A collection of entity types.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # Optional. Represents an entity.
      class GoogleCloudDialogflowV2beta1EntityTypeEntity
        include Google::Apis::Core::Hashable
      
        # Required. A collection of synonyms. For `KIND_LIST` entity types this
        # must contain exactly one synonym equal to `value`.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        # Required.
        # For `KIND_MAP` entity types:
        # A canonical name to be used in place of synonyms.
        # For `KIND_LIST` entity types:
        # A string that can contain references to other entity types (with or
        # without aliases).
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Events allow for matching intents by event name instead of the natural
      # language input. For instance, input `<event: ` name: “welcome_event”,
      # parameters: ` name: “Sam” ` `>` can trigger a personalized welcome response.
      # The parameter `name` may be used by the agent in the response:
      # `“Hello #welcome_event.name! What can I do for you today?”`.
      class GoogleCloudDialogflowV2beta1EventInput
        include Google::Apis::Core::Hashable
      
        # Required. The language of this query. See [Language
        # Support](https://dialogflow.com/docs/languages) for a list of the
        # currently supported language codes. Note that queries in the same session
        # do not necessarily need to specify the same language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The unique identifier of the event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of parameters associated with the event.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # The request message for Agents.ExportAgent.
      class GoogleCloudDialogflowV2beta1ExportAgentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The
        # [Google Cloud Storage](https://cloud.google.com/storage/docs/)
        # URI to export the agent to.
        # The format of this URI must be `gs://<bucket-name>/<object-name>`.
        # If left unspecified, the serialized agent is returned inline.
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # The response message for Agents.ExportAgent.
      class GoogleCloudDialogflowV2beta1ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # The exported agent.
        # Example for how to export an agent to a zip file via a command line:
        # <pre>curl \
        # 'https://dialogflow.googleapis.com/v2beta1/projects/&lt;project_name&gt;/
        # agent:export'\
        # -X POST \
        # -H 'Authorization: Bearer '$(gcloud auth application-default
        # print-access-token) \
        # -H 'Accept: application/json' \
        # -H 'Content-Type: application/json' \
        # --compressed \
        # --data-binary '``' \
        # | grep agentContent | sed -e 's/.*"agentContent": "\([^"]*\)".*/\1/' \
        # | base64 --decode > &lt;agent zip file&gt;</pre>
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a file containing the exported agent. This field is populated
        # only if `agent_uri` is specified in `ExportAgentRequest`.
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # Defines FAQ responses that a human agent assistant can provide.
      class GoogleCloudDialogflowV2beta1FaqAnswersConfig
        include Google::Apis::Core::Hashable
      
        # Required. Settings for knowledge base, Format:
        # `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # Corresponds to the JSON property `knowledgeBaseName`
        # @return [String]
        attr_accessor :knowledge_base_name
      
        # Optional. Maximum number of results to return. If unset, defaults to 10.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @knowledge_base_name = args[:knowledge_base_name] if args.key?(:knowledge_base_name)
          @max_results = args[:max_results] if args.key?(:max_results)
        end
      end
      
      # Represents a human agent assistant that provides suggestions to help
      # human agents to resolve customer issues. This defines the types of content
      # that the human agent assistant can present to a human agent.
      class GoogleCloudDialogflowV2beta1HumanAgentAssistant
        include Google::Apis::Core::Hashable
      
        # Defines article suggestions that a human agent assistant can provide.
        # Corresponds to the JSON property `articleSuggestionConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ArticleSuggestionConfig]
        attr_accessor :article_suggestion_config
      
        # Defines FAQ responses that a human agent assistant can provide.
        # Corresponds to the JSON property `faqAnswersConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1FaqAnswersConfig]
        attr_accessor :faq_answers_config
      
        # Required for all methods except `create` (`create` populates the name
        # automatically).
        # The unique identifier of human agent assistant.
        # Format: `projects/<Project ID>/humanAgentAssistants/<Human Agent Assistant
        # ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @article_suggestion_config = args[:article_suggestion_config] if args.key?(:article_suggestion_config)
          @faq_answers_config = args[:faq_answers_config] if args.key?(:faq_answers_config)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Defines the Human Agent Assistant to connect to a conversation.
      class GoogleCloudDialogflowV2beta1HumanAgentAssistantConfig
        include Google::Apis::Core::Hashable
      
        # Required. ID of the agent assistant to use.
        # Format: `projects/<Project ID>/humanAgentAssistants/<Human Agent Assistant
        # ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines notification behavior for conversation lifecycle events.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1NotificationConfig]
        attr_accessor :notification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @notification_config = args[:notification_config] if args.key?(:notification_config)
        end
      end
      
      # The request message for Agents.ImportAgent.
      class GoogleCloudDialogflowV2beta1ImportAgentRequest
        include Google::Apis::Core::Hashable
      
        # The agent to import.
        # Example for how to import an agent via the command line:
        # <pre>curl \
        # 'https://dialogflow.googleapis.com/v2beta1/projects/&lt;project_name&gt;/
        # agent:import\
        # -X POST \
        # -H 'Authorization: Bearer '$(gcloud auth application-default
        # print-access-token) \
        # -H 'Accept: application/json' \
        # -H 'Content-Type: application/json' \
        # --compressed \
        # --data-binary "`
        # 'agentContent': '$(cat &lt;agent zip file&gt; | base64 -w 0)'
        # `"</pre>
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a Google Cloud Storage file containing the agent to import.
        # Note: The URI must start with "gs://".
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # Represents the natural language speech audio to be processed.
      class GoogleCloudDialogflowV2beta1InputAudio
        include Google::Apis::Core::Hashable
      
        # Required. The natural language speech audio to be processed.
        # A single request can contain up to 1 minute of speech audio data.
        # The transcribed text cannot contain more than 256 bytes.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Instructs the speech recognizer how to process the audio content.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InputAudioConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # Instructs the speech recognizer how to process the audio content.
      class GoogleCloudDialogflowV2beta1InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. Audio encoding of the audio content to process.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Required. The language of the supplied audio. Dialogflow does not do
        # translations. See [Language
        # Support](https://dialogflow.com/docs/languages) for a list of the
        # currently supported language codes. Note that queries in the same session
        # do not necessarily need to specify the same language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Which Speech model to select for the given request. Select the
        # model best suited to your domain to get best results. If a model is not
        # explicitly specified, then we auto-select a model based on the parameters
        # in the InputAudioConfig.
        # If enhanced speech model is enabled for the agent and an enhanced
        # version of the specified model for the language does not exist, then the
        # speech is recognized using the standard version of the specified model.
        # Refer to
        # [Cloud Speech API
        # documentation](https://cloud.google.com/speech-to-text/docs/basics#select-
        # model)
        # for more details.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. The collection of phrase hints which are used to boost accuracy
        # of speech recognition.
        # Refer to
        # [Cloud Speech API
        # documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-
        # hints)
        # for more details.
        # Corresponds to the JSON property `phraseHints`
        # @return [Array<String>]
        attr_accessor :phrase_hints
      
        # Required. Sample rate (in Hertz) of the audio content sent in the query.
        # Refer to
        # [Cloud Speech API
        # documentation](https://cloud.google.com/speech-to-text/docs/basics) for
        # more details.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model = args[:model] if args.key?(:model)
          @phrase_hints = args[:phrase_hints] if args.key?(:phrase_hints)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
        end
      end
      
      # Represents the natural language text to be processed.
      class GoogleCloudDialogflowV2beta1InputText
        include Google::Apis::Core::Hashable
      
        # Required. The language of this conversational query. See [Language
        # Support](https://dialogflow.com/docs/languages) for a list of the
        # currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The UTF-8 encoded natural language text to be processed.
        # Text length must not exceed 256 bytes.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Defines the language used in the input text.
      class GoogleCloudDialogflowV2beta1InputTextConfig
        include Google::Apis::Core::Hashable
      
        # Required. The language of this conversational query. See [Language
        # Support](https://dialogflow.com/docs/languages) for a list of the
        # currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Represents an intent.
      # Intents convert a number of user expressions or patterns into an action. An
      # action is an extraction of a user command or sentence semantics.
      class GoogleCloudDialogflowV2beta1Intent
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the action associated with the intent.
        # Note: The action name must not contain whitespaces.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Optional. The list of platforms for which the first response will be
        # taken from among the messages assigned to the DEFAULT_PLATFORM.
        # Corresponds to the JSON property `defaultResponsePlatforms`
        # @return [Array<String>]
        attr_accessor :default_response_platforms
      
        # Required. The name of this intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Indicates that this intent ends an interaction. Some integrations
        # (e.g., Actions on Google or Dialogflow phone gateway) use this information
        # to close interaction with an end user. Default is false.
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # Optional. The collection of event names that trigger the intent.
        # If the collection of input contexts is not empty, all of the contexts must
        # be present in the active user session for an event to trigger this intent.
        # Corresponds to the JSON property `events`
        # @return [Array<String>]
        attr_accessor :events
      
        # Read-only. Information about all followup intents that have this intent as
        # a direct or indirect parent. We populate this field only in the output.
        # Corresponds to the JSON property `followupIntentInfo`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>]
        attr_accessor :followup_intent_info
      
        # Optional. The list of context names required for this intent to be
        # triggered.
        # Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
        # Corresponds to the JSON property `inputContextNames`
        # @return [Array<String>]
        attr_accessor :input_context_names
      
        # Optional. Indicates whether this is a fallback intent.
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # Optional. The collection of rich messages corresponding to the
        # `Response` field in the Dialogflow console.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :messages
      
        # Optional. Indicates whether Machine Learning is disabled for the intent.
        # Note: If `ml_disabled` setting is set to true, then this intent is not
        # taken into account during inference in `ML ONLY` match mode. Also,
        # auto-markup in the UI is turned off.
        # Corresponds to the JSON property `mlDisabled`
        # @return [Boolean]
        attr_accessor :ml_disabled
        alias_method :ml_disabled?, :ml_disabled
      
        # Optional. Indicates whether Machine Learning is enabled for the intent.
        # Note: If `ml_enabled` setting is set to false, then this intent is not
        # taken into account during inference in `ML ONLY` match mode. Also,
        # auto-markup in the UI is turned off.
        # DEPRECATED! Please use `ml_disabled` field instead.
        # NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false,
        # then the default value is determined as follows:
        # - Before April 15th, 2018 the default is:
        # ml_enabled = false / ml_disabled = true.
        # - After April 15th, 2018 the default is:
        # ml_enabled = true / ml_disabled = false.
        # Corresponds to the JSON property `mlEnabled`
        # @return [Boolean]
        attr_accessor :ml_enabled
        alias_method :ml_enabled?, :ml_enabled
      
        # Required for all methods except `create` (`create` populates the name
        # automatically.
        # The unique identifier of this intent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of contexts that are activated when the intent
        # is matched. Context messages in this collection should not set the
        # parameters field. Setting the `lifespan_count` to 0 will reset the context
        # when the intent is matched.
        # Format: `projects/<Project ID>/agent/sessions/-/contexts/<Context ID>`.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # Optional. The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentParameter>]
        attr_accessor :parameters
      
        # Read-only after creation. The unique identifier of the parent intent in the
        # chain of followup intents. You can set this field when creating an intent,
        # for example with CreateIntent or BatchUpdateIntents, in order to
        # make this intent a followup intent.
        # It identifies the parent followup intent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        # Optional. The priority of this intent. Higher numbers represent higher
        # priorities. Zero or negative numbers mean that the intent is disabled.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Optional. Indicates whether to delete all contexts in the current
        # session when this intent is matched.
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # Read-only. The unique identifier of the root intent in the chain of
        # followup intents. It identifies the correct followup intents chain for
        # this intent. We populate this field only in the output.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `rootFollowupIntentName`
        # @return [String]
        attr_accessor :root_followup_intent_name
      
        # Optional. The collection of examples/templates that the agent is
        # trained on.
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        # Optional. Indicates whether webhooks are enabled for the intent.
        # Corresponds to the JSON property `webhookState`
        # @return [String]
        attr_accessor :webhook_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @default_response_platforms = args[:default_response_platforms] if args.key?(:default_response_platforms)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @events = args[:events] if args.key?(:events)
          @followup_intent_info = args[:followup_intent_info] if args.key?(:followup_intent_info)
          @input_context_names = args[:input_context_names] if args.key?(:input_context_names)
          @is_fallback = args[:is_fallback] if args.key?(:is_fallback)
          @messages = args[:messages] if args.key?(:messages)
          @ml_disabled = args[:ml_disabled] if args.key?(:ml_disabled)
          @ml_enabled = args[:ml_enabled] if args.key?(:ml_enabled)
          @name = args[:name] if args.key?(:name)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
          @priority = args[:priority] if args.key?(:priority)
          @reset_contexts = args[:reset_contexts] if args.key?(:reset_contexts)
          @root_followup_intent_name = args[:root_followup_intent_name] if args.key?(:root_followup_intent_name)
          @training_phrases = args[:training_phrases] if args.key?(:training_phrases)
          @webhook_state = args[:webhook_state] if args.key?(:webhook_state)
        end
      end
      
      # This message is a wrapper around a collection of intents.
      class GoogleCloudDialogflowV2beta1IntentBatch
        include Google::Apis::Core::Hashable
      
        # A collection of intents.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # Represents a single followup intent in the chain.
      class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the followup intent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `followupIntentName`
        # @return [String]
        attr_accessor :followup_intent_name
      
        # The unique identifier of the followup intent's parent.
        # Format: `projects/<Project ID>/agent/intents/<Intent ID>`.
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @followup_intent_name = args[:followup_intent_name] if args.key?(:followup_intent_name)
          @parent_followup_intent_name = args[:parent_followup_intent_name] if args.key?(:parent_followup_intent_name)
        end
      end
      
      # Corresponds to the `Response` field in the Dialogflow console.
      class GoogleCloudDialogflowV2beta1IntentMessage
        include Google::Apis::Core::Hashable
      
        # The basic card message. Useful for displaying information.
        # Corresponds to the JSON property `basicCard`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # The card response message.
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageCard]
        attr_accessor :card
      
        # The card for presenting a carousel of options to select from.
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # The suggestion chip message that allows the user to jump out to the app
        # or website associated with this agent.
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # The card for presenting a list of options to select from.
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelect]
        attr_accessor :list_select
      
        # Returns a response containing a custom, platform-specific payload.
        # See the Intent.Message.Platform type for a description of the
        # structure that may be required for your platform.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. The platform that this message is intended for.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The quick replies response message.
        # Corresponds to the JSON property `quickReplies`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # The collection of simple response candidates.
        # This message in `QueryResult.fulfillment_messages` and
        # `WebhookResponse.fulfillment_messages` should contain only one
        # `SimpleResponse`.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # The collection of suggestions.
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # Plays audio from a file in Telephony Gateway.
        # Corresponds to the JSON property `telephonyPlayAudio`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio]
        attr_accessor :telephony_play_audio
      
        # Synthesizes speech and plays back the synthesized audio to the caller in
        # Telephony Gateway.
        # Telephony Gateway takes the synthesizer settings from
        # `DetectIntentResponse.output_audio_config` which can either be set
        # at request-level or can come from the agent-level synthesizer config.
        # Corresponds to the JSON property `telephonySynthesizeSpeech`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech]
        attr_accessor :telephony_synthesize_speech
      
        # Transfers the call in Telephony Gateway.
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_card = args[:basic_card] if args.key?(:basic_card)
          @card = args[:card] if args.key?(:card)
          @carousel_select = args[:carousel_select] if args.key?(:carousel_select)
          @image = args[:image] if args.key?(:image)
          @link_out_suggestion = args[:link_out_suggestion] if args.key?(:link_out_suggestion)
          @list_select = args[:list_select] if args.key?(:list_select)
          @payload = args[:payload] if args.key?(:payload)
          @platform = args[:platform] if args.key?(:platform)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
          @telephony_play_audio = args[:telephony_play_audio] if args.key?(:telephony_play_audio)
          @telephony_synthesize_speech = args[:telephony_synthesize_speech] if args.key?(:telephony_synthesize_speech)
          @telephony_transfer_call = args[:telephony_transfer_call] if args.key?(:telephony_transfer_call)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The basic card message. Useful for displaying information.
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Required, unless image is present. The body text of the card.
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @formatted_text = args[:formatted_text] if args.key?(:formatted_text)
          @image = args[:image] if args.key?(:image)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The button object that appears at the bottom of a card.
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
        include Google::Apis::Core::Hashable
      
        # Opens the given URI.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction]
        attr_accessor :open_uri_action
      
        # Required. The title of the button.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @open_uri_action = args[:open_uri_action] if args.key?(:open_uri_action)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Opens the given URI.
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        include Google::Apis::Core::Hashable
      
        # Required. The HTTP or HTTPS scheme URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The card response message.
      class GoogleCloudDialogflowV2beta1IntentMessageCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageCardButton>]
        attr_accessor :buttons
      
        # Optional. The public URI to an image file for the card.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Optional. Contains information about a button.
      class GoogleCloudDialogflowV2beta1IntentMessageCardButton
        include Google::Apis::Core::Hashable
      
        # Optional. The text to send back to the Dialogflow API or a URI to
        # open.
        # Corresponds to the JSON property `postback`
        # @return [String]
        attr_accessor :postback
      
        # Optional. The text to show on the button.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postback = args[:postback] if args.key?(:postback)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The card for presenting a carousel of options to select from.
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
        include Google::Apis::Core::Hashable
      
        # Required. Carousel items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # An item in the carousel.
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The body text of the card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a
        # dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. Title of the carousel item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The image response message.
      class GoogleCloudDialogflowV2beta1IntentMessageImage
        include Google::Apis::Core::Hashable
      
        # A text description of the image to be used for accessibility,
        # e.g., screen readers. Required if image_uri is set for CarouselSelect.
        # Corresponds to the JSON property `accessibilityText`
        # @return [String]
        attr_accessor :accessibility_text
      
        # Optional. The public URI to an image file.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessibility_text = args[:accessibility_text] if args.key?(:accessibility_text)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # The suggestion chip message that allows the user to jump out to the app
      # or website associated with this agent.
      class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The name of the app or site this chip is linking to.
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # Required. The URI of the app or site to open when the user taps the
        # suggestion chip.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_name = args[:destination_name] if args.key?(:destination_name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The card for presenting a list of options to select from.
      class GoogleCloudDialogflowV2beta1IntentMessageListSelect
        include Google::Apis::Core::Hashable
      
        # Required. List items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>]
        attr_accessor :items
      
        # Optional. The overall title of the list.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # An item in the list.
      class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The main text describing the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a
        # dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. The title of the list item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image = args[:image] if args.key?(:image)
          @info = args[:info] if args.key?(:info)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The quick replies response message.
      class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of quick replies.
        # Corresponds to the JSON property `quickReplies`
        # @return [Array<String>]
        attr_accessor :quick_replies
      
        # Optional. The title of the collection of quick replies.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quick_replies = args[:quick_replies] if args.key?(:quick_replies)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Additional info about the select item for when it is triggered in a
      # dialog.
      class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
        include Google::Apis::Core::Hashable
      
        # Required. A unique key that will be sent back to the agent if this
        # response is given.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. A list of synonyms that can also be used to trigger this
        # item in dialog.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @synonyms = args[:synonyms] if args.key?(:synonyms)
        end
      end
      
      # The simple response message containing speech or text.
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The text to display.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # One of text_to_speech or ssml must be provided. Structured spoken
        # response to the user in the SSML format. Mutually exclusive with
        # text_to_speech.
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # One of text_to_speech or ssml must be provided. The plain text of the
        # speech output. Mutually exclusive with ssml.
        # Corresponds to the JSON property `textToSpeech`
        # @return [String]
        attr_accessor :text_to_speech
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_text = args[:display_text] if args.key?(:display_text)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text_to_speech = args[:text_to_speech] if args.key?(:text_to_speech)
        end
      end
      
      # The collection of simple response candidates.
      # This message in `QueryResult.fulfillment_messages` and
      # `WebhookResponse.fulfillment_messages` should contain only one
      # `SimpleResponse`.
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
        include Google::Apis::Core::Hashable
      
        # Required. The list of simple responses.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>]
        attr_accessor :simple_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
        end
      end
      
      # The suggestion chip message that the user can tap to quickly post a reply
      # to the conversation.
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The text shown the in the suggestion chip.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The collection of suggestions.
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestions
        include Google::Apis::Core::Hashable
      
        # Required. The list of suggested replies.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # Plays audio from a file in Telephony Gateway.
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
        include Google::Apis::Core::Hashable
      
        # Required. URI to a Google Cloud Storage object containing the audio to
        # play, e.g., "gs://bucket/object". The object must contain a single
        # channel (mono) of linear PCM audio (2 bytes / sample) at 8kHz.
        # This object must be readable by the `service-<Project
        # Number>@gcp-sa-dialogflow.iam.gserviceaccount.com` service account
        # where <Project Number> is the number of the Telephony Gateway project
        # (usually the same as the Dialogflow agent project). If the Google Cloud
        # Storage bucket is in the Telephony Gateway project, this permission is
        # added by default when enabling the Dialogflow V2 API.
        # For audio from other sources, consider using the
        # `TelephonySynthesizeSpeech` message with SSML.
        # Corresponds to the JSON property `audioUri`
        # @return [String]
        attr_accessor :audio_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_uri = args[:audio_uri] if args.key?(:audio_uri)
        end
      end
      
      # Synthesizes speech and plays back the synthesized audio to the caller in
      # Telephony Gateway.
      # Telephony Gateway takes the synthesizer settings from
      # `DetectIntentResponse.output_audio_config` which can either be set
      # at request-level or can come from the agent-level synthesizer config.
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
        include Google::Apis::Core::Hashable
      
        # The SSML to be synthesized. For more information, see
        # [SSML](https://developers.google.com/actions/reference/ssml).
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # The raw text to be synthesized.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Transfers the call in Telephony Gateway.
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # Required. The phone number to transfer the call to
        # in [E.164 format](https://en.wikipedia.org/wiki/E.164).
        # We currently only allow transferring to US numbers (+1xxxyyyzzzz).
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # The text response message.
      class GoogleCloudDialogflowV2beta1IntentMessageText
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of the agent's responses.
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents intent parameters.
      class GoogleCloudDialogflowV2beta1IntentParameter
        include Google::Apis::Core::Hashable
      
        # Optional. The default value to use when the `value` yields an empty
        # result.
        # Default values can be extracted from contexts by using the following
        # syntax: `#context_name.parameter_name`.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # Required. The name of the parameter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The name of the entity type, prefixed with `@`, that
        # describes values of the parameter. If the parameter is
        # required, this must be provided.
        # Corresponds to the JSON property `entityTypeDisplayName`
        # @return [String]
        attr_accessor :entity_type_display_name
      
        # Optional. Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Optional. Indicates whether the parameter is required. That is,
        # whether the intent cannot be completed without collecting the parameter
        # value.
        # Corresponds to the JSON property `mandatory`
        # @return [Boolean]
        attr_accessor :mandatory
        alias_method :mandatory?, :mandatory
      
        # The unique identifier of this parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of prompts that the agent can present to the
        # user in order to collect value for the parameter.
        # Corresponds to the JSON property `prompts`
        # @return [Array<String>]
        attr_accessor :prompts
      
        # Optional. The definition of the parameter value. It can be:
        # - a constant string,
        # - a parameter value defined as `$parameter_name`,
        # - an original parameter value defined as `$parameter_name.original`,
        # - a parameter value from some context defined as
        # `#context_name.parameter_name`.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type_display_name = args[:entity_type_display_name] if args.key?(:entity_type_display_name)
          @is_list = args[:is_list] if args.key?(:is_list)
          @mandatory = args[:mandatory] if args.key?(:mandatory)
          @name = args[:name] if args.key?(:name)
          @prompts = args[:prompts] if args.key?(:prompts)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Represents an example or template that the agent is trained on.
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier of this training phrase.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The collection of training phrase parts (can be annotated).
        # Fields: `entity_type`, `alias` and `user_defined` should be populated
        # only for the annotated parts of the training phrase.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # Optional. Indicates how many times this example or template was added to
        # the intent. Each time a developer adds an existing sample by editing an
        # intent or training, this counter is increased.
        # Corresponds to the JSON property `timesAddedCount`
        # @return [Fixnum]
        attr_accessor :times_added_count
      
        # Required. The type of the training phrase.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @parts = args[:parts] if args.key?(:parts)
          @times_added_count = args[:times_added_count] if args.key?(:times_added_count)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a part of a training phrase.
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # Optional. The parameter name for the value extracted from the
        # annotated part of the example.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Optional. The entity type name prefixed with `@`. This field is
        # required for the annotated part of the text and applies only to
        # examples.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Required. The text corresponding to the example or template,
        # if there are no annotations. For
        # annotated examples, it is the text for one of the example's parts.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optional. Indicates whether the text was manually annotated by the
        # developer.
        # Corresponds to the JSON property `userDefined`
        # @return [Boolean]
        attr_accessor :user_defined
        alias_method :user_defined?, :user_defined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @text = args[:text] if args.key?(:text)
          @user_defined = args[:user_defined] if args.key?(:user_defined)
        end
      end
      
      # Represents the result of querying a Knowledge base.
      class GoogleCloudDialogflowV2beta1KnowledgeAnswers
        include Google::Apis::Core::Hashable
      
        # A list of answers from Knowledge Connector.
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>]
        attr_accessor :answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
        end
      end
      
      # An answer from Knowledge Connector.
      class GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
        include Google::Apis::Core::Hashable
      
        # The piece of text from the `source` knowledge base document that answers
        # this conversational query.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # The corresponding FAQ question if the answer was extracted from a FAQ
        # Document, empty otherwise.
        # Corresponds to the JSON property `faqQuestion`
        # @return [String]
        attr_accessor :faq_question
      
        # The system's confidence score that this Knowledge answer is a good match
        # for this converstational query, range from 0.0 (completely uncertain)
        # to 1.0 (completely certain).
        # Note: The confidence score is likely to vary somewhat (possibly even for
        # identical requests), as the underlying model is under constant
        # improvement, we may deprecate it in the future. We recommend using
        # `match_confidence_level` which should be generally more stable.
        # Corresponds to the JSON property `matchConfidence`
        # @return [Float]
        attr_accessor :match_confidence
      
        # The system's confidence level that this knowledge answer is a good match
        # for this conversational query.
        # NOTE: The confidence level for a given `<query, answer>` pair may change
        # without notice, as it depends on models that are constantly being
        # improved. However, it will change less frequently than the confidence
        # score below, and should be preferred for referencing the quality of an
        # answer.
        # Corresponds to the JSON property `matchConfidenceLevel`
        # @return [String]
        attr_accessor :match_confidence_level
      
        # Indicates which Knowledge Document this answer was extracted from.
        # Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base
        # ID>/documents/<Document ID>`.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @faq_question = args[:faq_question] if args.key?(:faq_question)
          @match_confidence = args[:match_confidence] if args.key?(:match_confidence)
          @match_confidence_level = args[:match_confidence_level] if args.key?(:match_confidence_level)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Represents knowledge base resource.
      # Note: resource `projects.agent.knowledgeBases` is deprecated, please use
      # `projects.knowledgeBases` instead.
      class GoogleCloudDialogflowV2beta1KnowledgeBase
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the knowledge base. The name must be 1024
        # bytes or less; otherwise, the creation request fails.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The knowledge base resource name.
        # The name must be empty when creating a knowledge base.
        # Format: `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata in google::longrunning::Operation for Knowledge operations.
      class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Required. The current state of this operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The response message for Contexts.ListContexts.
      class GoogleCloudDialogflowV2beta1ListContextsResponse
        include Google::Apis::Core::Hashable
      
        # The list of contexts. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :contexts
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contexts = args[:contexts] if args.key?(:contexts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for ConversationProfiles.ListConversationProfiles.
      class GoogleCloudDialogflowV2beta1ListConversationProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The list of project conversation profiles. There is a maximum number
        # of items returned based on the page_size field in the request.
        # Corresponds to the JSON property `conversationProfiles`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1ConversationProfile>]
        attr_accessor :conversation_profiles
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profiles = args[:conversation_profiles] if args.key?(:conversation_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Conversations.ListConversations.
      class GoogleCloudDialogflowV2beta1ListConversationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of conversations. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `conversations`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Conversation>]
        attr_accessor :conversations
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversations = args[:conversations] if args.key?(:conversations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for Documents.ListDocuments.
      class GoogleCloudDialogflowV2beta1ListDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of documents.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Document>]
        attr_accessor :documents
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for EntityTypes.ListEntityTypes.
      class GoogleCloudDialogflowV2beta1ListEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The list of agent entity types. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityType>]
        attr_accessor :entity_types
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for HumanAgentAssistants.ListHumanAgentAssistants.
      class GoogleCloudDialogflowV2beta1ListHumanAgentAssistantsResponse
        include Google::Apis::Core::Hashable
      
        # The list of project agent assistants. There is a maximum number of
        # items returned based on the page_size field in the request.
        # Corresponds to the JSON property `humanAgentAssistants`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1HumanAgentAssistant>]
        attr_accessor :human_agent_assistants
      
        # Token to retrieve the next page of results or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_agent_assistants = args[:human_agent_assistants] if args.key?(:human_agent_assistants)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Intents.ListIntents.
      class GoogleCloudDialogflowV2beta1ListIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of agent intents. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent>]
        attr_accessor :intents
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for KnowledgeBases.ListKnowledgeBases.
      class GoogleCloudDialogflowV2beta1ListKnowledgeBasesResponse
        include Google::Apis::Core::Hashable
      
        # The list of knowledge bases.
        # Corresponds to the JSON property `knowledgeBases`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeBase>]
        attr_accessor :knowledge_bases
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @knowledge_bases = args[:knowledge_bases] if args.key?(:knowledge_bases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Conversations.ListMessages.
      class GoogleCloudDialogflowV2beta1ListMessagesResponse
        include Google::Apis::Core::Hashable
      
        # Required. The list of messages. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Message>]
        attr_accessor :messages
      
        # Optional. Token to retrieve the next page of results, or empty if there are
        # no more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Conversations.ListParticipants.
      class GoogleCloudDialogflowV2beta1ListParticipantsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of participants. There is a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `participants`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Participant>]
        attr_accessor :participants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @participants = args[:participants] if args.key?(:participants)
        end
      end
      
      # The response message for PhoneNumberOrders.ListPhoneNumberOrders.
      class GoogleCloudDialogflowV2beta1ListPhoneNumberOrdersResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of orders. There is a maximum number of items returned based
        # on the page_size field in the request.
        # Corresponds to the JSON property `phoneNumberOrders`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumberOrder>]
        attr_accessor :phone_number_orders
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @phone_number_orders = args[:phone_number_orders] if args.key?(:phone_number_orders)
        end
      end
      
      # The response message for PhoneNumbers.ListPhoneNumbers.
      class GoogleCloudDialogflowV2beta1ListPhoneNumbersResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of `PhoneNumber` resources. There is a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumber>]
        attr_accessor :phone_numbers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
        end
      end
      
      # The response message for SessionEntityTypes.ListSessionEntityTypes.
      class GoogleCloudDialogflowV2beta1ListSessionEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of session entity types. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType>]
        attr_accessor :session_entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
        end
      end
      
      # The response message for [Conversations.ListSuggestions]
      class GoogleCloudDialogflowV2beta1ListSuggestionsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Token to retrieve the next page of results or empty if there are
        # no more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Required.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Suggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # Defines logging behavior for conversation lifecycle events.
      class GoogleCloudDialogflowV2beta1LoggingConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a message posted into a conversation.
      class GoogleCloudDialogflowV2beta1Message
        include Google::Apis::Core::Hashable
      
        # Required. The message content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. The time when the message was sent.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The message language.
        # This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
        # language tag. Example: "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The unique identifier of the message.
        # Format: `projects/<Project ID>/conversations/<Conversation
        # ID>/messages/<Message ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The participant that said this message.
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # Optional. The role of the participant.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @create_time = args[:create_time] if args.key?(:create_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @participant = args[:participant] if args.key?(:participant)
          @participant_role = args[:participant_role] if args.key?(:participant_role)
        end
      end
      
      # Defines notification behavior for conversation lifecycle events.
      class GoogleCloudDialogflowV2beta1NotificationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the Cloud Pub/Sub topic to publish conversation
        # events like
        # CONVERSATION_STARTED as
        # serialized ConversationEvent protos.
        # If enable_notifications is
        # `true` and no topic is supplied, a new topic is created and listed
        # here.
        # Notification works for phone calls, if this topic either is in the same
        # project as the conversation or you grant `service-<Conversation Project
        # Number>@gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow Service
        # Agent` role in the topic project.
        # Format: `projects/<Project ID>/topics/<Topic ID>`.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Represents the contents of the original request that was passed to
      # the `[Streaming]DetectIntent` call.
      class GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. This field is set to the value of the `QueryParameters.payload`
        # field passed in the request. Some integrations that query a Dialogflow
        # agent may provide additional information in the payload.
        # In particular for the Telephony Gateway this field has the form:
        # <pre>`
        # "telephony": `
        # "caller_id": "+18558363987"
        # `
        # `</pre>
        # Note: The caller ID field (`caller_id`) will be redacted for Standard
        # Edition agents and populated with the caller ID in [E.164
        # format](https://en.wikipedia.org/wiki/E.164) for Enterprise Edition agents.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # The source of this request, e.g., `google`, `facebook`, `slack`. It is set
        # by Dialogflow-owned servers.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Optional. The version of the protocol used for this request.
        # This field is AoG-specific.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @source = args[:source] if args.key?(:source)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents the natural language speech audio to be played to the end user.
      class GoogleCloudDialogflowV2beta1OutputAudio
        include Google::Apis::Core::Hashable
      
        # Required. The natural language speech audio.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OutputAudioConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # Instructs the speech synthesizer how to generate the output audio content.
      class GoogleCloudDialogflowV2beta1OutputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. Audio encoding of the synthesized audio content.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Optional. The synthesis sample rate (in hertz) for this audio. If not
        # provided, then the synthesizer will use the default sample rate based on
        # the audio encoding. If this is different from the voice's natural sample
        # rate, then the synthesizer will honor this request by converting to the
        # desired sample rate (which might result in worse audio quality).
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # Configuration of how speech should be synthesized.
        # Corresponds to the JSON property `synthesizeSpeechConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig]
        attr_accessor :synthesize_speech_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @synthesize_speech_config = args[:synthesize_speech_config] if args.key?(:synthesize_speech_config)
        end
      end
      
      # Represents a single side of the conversation.
      class GoogleCloudDialogflowV2beta1Participant
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of this participant.
        # Format: `projects/<Project ID>/conversations/<Conversation
        # ID>/participants/<Participant ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The role this participant plays in the conversation.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Represents a phone number.
      # `PhoneNumber` resources enable phone calls to be answered by Dialogflow
      # services and are added to a project through a `PhoneNumberOrder`.
      class GoogleCloudDialogflowV2beta1PhoneNumber
        include Google::Apis::Core::Hashable
      
        # Optional. The conversation profile calls to this `PhoneNumber` should use.
        # Format: `projects/<Project ID>/conversationProfiles/<ConversationProfile
        # ID>`.
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # Output only. The state of the `PhoneNumber`. Defaults to `ACTIVE`.
        # `PhoneNumber` objects set to `DELETE_REQUESTED` always decline incoming
        # calls and can be removed completely within 30 days.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Required. The unique identifier of this phone number.
        # Format: `projects/<Project ID>/phoneNumbers/<PhoneNumber ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Phone number in [E.164](https://en.wikipedia.org/wiki/E.164)
        # format. An example of a correctly formatted phone number: +15556767888.
        # Corresponds to the JSON property `phoneNumber`
        # @return [String]
        attr_accessor :phone_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
        end
      end
      
      # Represents a phone number order.
      # Orders can assign phone numbers to projects.
      class GoogleCloudDialogflowV2beta1PhoneNumberOrder
        include Google::Apis::Core::Hashable
      
        # Output only. The time this order was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of the order, limit is 1024 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The current status of the order.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Required. The unique identifier of this order.
        # Format: `projects/<Project ID>/phoneNumberOrders/<Order ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Request for new numbers fitting a set of parameters.
        # The country code for newly requested numbers defaults to 1 (US) until the
        # service is available in other regions.
        # Corresponds to the JSON property `phoneNumberSpec`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1PhoneNumberSpec]
        attr_accessor :phone_number_spec
      
        # Output only. A map of ordered numbers filled so far, keyed by their
        # resource name. Key format:
        # `projects/<Project ID>/phoneNumbers/<PhoneNumber ID>`.
        # Value format: E.164 phone number. Output only.
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Hash<String,String>]
        attr_accessor :phone_numbers
      
        # Output only. The time this order was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @phone_number_spec = args[:phone_number_spec] if args.key?(:phone_number_spec)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request for new numbers fitting a set of parameters.
      # The country code for newly requested numbers defaults to 1 (US) until the
      # service is available in other regions.
      class GoogleCloudDialogflowV2beta1PhoneNumberSpec
        include Google::Apis::Core::Hashable
      
        # Required. Total numbers requested, between 1 and 10 inclusive.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Optional. Area codes to use. An empty list means 'any code'. Each value
        # is treated as equally preferred. Each entry has a limit of 10 bytes.
        # "area code" corresponds to "National Destination Code" described in
        # [E.164](https://en.wikipedia.org/wiki/E.164) standard.
        # Corresponds to the JSON property `preferredAreaCodes`
        # @return [Array<String>]
        attr_accessor :preferred_area_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @preferred_area_codes = args[:preferred_area_codes] if args.key?(:preferred_area_codes)
        end
      end
      
      # Represents the query input. It can contain either:
      # 1.  An audio config which
      # instructs the speech recognizer how to process the speech audio.
      # 2.  A conversational query in the form of text,.
      # 3.  An event that specifies which intent to trigger.
      class GoogleCloudDialogflowV2beta1QueryInput
        include Google::Apis::Core::Hashable
      
        # Instructs the speech recognizer how to process the audio content.
        # Corresponds to the JSON property `audioConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InputAudioConfig]
        attr_accessor :audio_config
      
        # Events allow for matching intents by event name instead of the natural
        # language input. For instance, input `<event: ` name: “welcome_event”,
        # parameters: ` name: “Sam” ` `>` can trigger a personalized welcome response.
        # The parameter `name` may be used by the agent in the response:
        # `“Hello #welcome_event.name! What can I do for you today?”`.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EventInput]
        attr_accessor :event
      
        # Represents the natural language text to be processed.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1TextInput]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_config = args[:audio_config] if args.key?(:audio_config)
          @event = args[:event] if args.key?(:event)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents the parameters of the conversational query.
      class GoogleCloudDialogflowV2beta1QueryParameters
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of contexts to be activated before this query is
        # executed.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :contexts
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Corresponds to the JSON property `geoLocation`
        # @return [Google::Apis::DialogflowV2beta1::GoogleTypeLatLng]
        attr_accessor :geo_location
      
        # Optional. KnowledgeBases to get alternative results from. If not set, the
        # KnowledgeBases enabled in the agent (through UI) will be used.
        # Format:  `projects/<Project ID>/knowledgeBases/<Knowledge Base ID>`.
        # Corresponds to the JSON property `knowledgeBaseNames`
        # @return [Array<String>]
        attr_accessor :knowledge_base_names
      
        # Optional. This field can be used to pass custom data into the webhook
        # associated with the agent. Arbitrary JSON objects are supported.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. Specifies whether to delete all contexts in the current session
        # before the new ones are activated.
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # Configures the types of sentiment analysis to perform.
        # Corresponds to the JSON property `sentimentAnalysisRequestConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig]
        attr_accessor :sentiment_analysis_request_config
      
        # Optional. Additional session entity types to replace or extend developer
        # entity types with. The entity synonyms apply to all languages and persist
        # for the session of this query.
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SessionEntityType>]
        attr_accessor :session_entity_types
      
        # Optional. The time zone of this conversational query from the
        # [time zone database](https://www.iana.org/time-zones), e.g.,
        # America/New_York, Europe/Paris. If not provided, the time zone specified in
        # agent settings is used.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contexts = args[:contexts] if args.key?(:contexts)
          @geo_location = args[:geo_location] if args.key?(:geo_location)
          @knowledge_base_names = args[:knowledge_base_names] if args.key?(:knowledge_base_names)
          @payload = args[:payload] if args.key?(:payload)
          @reset_contexts = args[:reset_contexts] if args.key?(:reset_contexts)
          @sentiment_analysis_request_config = args[:sentiment_analysis_request_config] if args.key?(:sentiment_analysis_request_config)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Represents the result of conversational query or event processing.
      class GoogleCloudDialogflowV2beta1QueryResult
        include Google::Apis::Core::Hashable
      
        # The action name from the matched intent.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # This field is set to:
        # - `false` if the matched intent has required parameters and not all of
        # the required parameter values have been collected.
        # - `true` if all required parameter values have been collected, or if the
        # matched intent doesn't contain any required parameters.
        # Corresponds to the JSON property `allRequiredParamsPresent`
        # @return [Boolean]
        attr_accessor :all_required_params_present
        alias_method :all_required_params_present?, :all_required_params_present
      
        # The free-form diagnostic info. For example, this field
        # could contain webhook call latency.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # The collection of rich messages to present to the user.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # The text to be pronounced to the user or shown on the screen.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # Represents an intent.
        # Intents convert a number of user expressions or patterns into an action. An
        # action is an extraction of a user command or sentence semantics.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Intent]
        attr_accessor :intent
      
        # The intent detection confidence. Values range from 0.0
        # (completely uncertain) to 1.0 (completely certain).
        # If there are `multiple knowledge_answers` messages, this value is set to
        # the greatest `knowledgeAnswers.match_confidence` value in the list.
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # Represents the result of querying a Knowledge base.
        # Corresponds to the JSON property `knowledgeAnswers`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswers]
        attr_accessor :knowledge_answers
      
        # The language that was triggered during intent detection.
        # See [Language Support](https://dialogflow.com/docs/reference/language)
        # for a list of the currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The collection of output contexts. If applicable,
        # `output_contexts.parameters` contains entries with name
        # `<parameter name>.original` containing the original parameter values
        # before the query.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # The collection of extracted parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # The original conversational query text:
        # - If natural language text was provided as input, `query_text` contains
        # a copy of the input.
        # - If natural language speech audio was provided as input, `query_text`
        # contains the speech recognition result. If speech recognizer produced
        # multiple alternatives, a particular one is picked.
        # - If an event was provided as input, `query_text` is not set.
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        # The result of sentiment analysis as configured by
        # `sentiment_analysis_request_config`.
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # The Speech recognition confidence between 0.0 and 1.0. A higher number
        # indicates an estimated greater likelihood that the recognized words are
        # correct. The default of 0.0 is a sentinel value indicating that confidence
        # was not set.
        # This field is not guaranteed to be accurate or set. In particular this
        # field isn't set for StreamingDetectIntent since the streaming endpoint has
        # separate confidence estimates per portion of the audio in
        # StreamingRecognitionResult.
        # Corresponds to the JSON property `speechRecognitionConfidence`
        # @return [Float]
        attr_accessor :speech_recognition_confidence
      
        # If the query was fulfilled by a webhook call, this field is set to the
        # value of the `payload` field returned in the webhook response.
        # Corresponds to the JSON property `webhookPayload`
        # @return [Hash<String,Object>]
        attr_accessor :webhook_payload
      
        # If the query was fulfilled by a webhook call, this field is set to the
        # value of the `source` field returned in the webhook response.
        # Corresponds to the JSON property `webhookSource`
        # @return [String]
        attr_accessor :webhook_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @all_required_params_present = args[:all_required_params_present] if args.key?(:all_required_params_present)
          @diagnostic_info = args[:diagnostic_info] if args.key?(:diagnostic_info)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @intent = args[:intent] if args.key?(:intent)
          @intent_detection_confidence = args[:intent_detection_confidence] if args.key?(:intent_detection_confidence)
          @knowledge_answers = args[:knowledge_answers] if args.key?(:knowledge_answers)
          @language_code = args[:language_code] if args.key?(:language_code)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @parameters = args[:parameters] if args.key?(:parameters)
          @query_text = args[:query_text] if args.key?(:query_text)
          @sentiment_analysis_result = args[:sentiment_analysis_result] if args.key?(:sentiment_analysis_result)
          @speech_recognition_confidence = args[:speech_recognition_confidence] if args.key?(:speech_recognition_confidence)
          @webhook_payload = args[:webhook_payload] if args.key?(:webhook_payload)
          @webhook_source = args[:webhook_source] if args.key?(:webhook_source)
        end
      end
      
      # The request message for Agents.RestoreAgent.
      class GoogleCloudDialogflowV2beta1RestoreAgentRequest
        include Google::Apis::Core::Hashable
      
        # The agent to restore.
        # Example for how to restore an agent via the command line:
        # <pre>curl \
        # 'https://dialogflow.googleapis.com/v2beta1/projects/&lt;project_name&gt;/
        # agent:restore\
        # -X POST \
        # -H 'Authorization: Bearer '$(gcloud auth application-default
        # print-access-token) \
        # -H 'Accept: application/json' \
        # -H 'Content-Type: application/json' \
        # --compressed \
        # --data-binary "`
        # 'agentContent': '$(cat &lt;agent zip file&gt; | base64 -w 0)'
        # `"</pre>
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a Google Cloud Storage file containing the agent to restore.
        # Note: The URI must start with "gs://".
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_content = args[:agent_content] if args.key?(:agent_content)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
        end
      end
      
      # The response message for Agents.SearchAgents.
      class GoogleCloudDialogflowV2beta1SearchAgentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of agents. There will be a maximum number of items returned based
        # on the page_size field in the request.
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Agent>]
        attr_accessor :agents
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agents = args[:agents] if args.key?(:agents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The sentiment, such as positive/negative feeling or association, for a unit
      # of analysis, such as the query text.
      class GoogleCloudDialogflowV2beta1Sentiment
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment, regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive
        # sentiment).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # Configures the types of sentiment analysis to perform.
      class GoogleCloudDialogflowV2beta1SentimentAnalysisRequestConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Instructs the service to perform sentiment analysis on
        # `query_text`. If not provided, sentiment analysis is not performed on
        # `query_text`.
        # Corresponds to the JSON property `analyzeQueryTextSentiment`
        # @return [Boolean]
        attr_accessor :analyze_query_text_sentiment
        alias_method :analyze_query_text_sentiment?, :analyze_query_text_sentiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyze_query_text_sentiment = args[:analyze_query_text_sentiment] if args.key?(:analyze_query_text_sentiment)
        end
      end
      
      # The result of sentiment analysis as configured by
      # `sentiment_analysis_request_config`.
      class GoogleCloudDialogflowV2beta1SentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # The sentiment, such as positive/negative feeling or association, for a unit
        # of analysis, such as the query text.
        # Corresponds to the JSON property `queryTextSentiment`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Sentiment]
        attr_accessor :query_text_sentiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_text_sentiment = args[:query_text_sentiment] if args.key?(:query_text_sentiment)
        end
      end
      
      # Represents a session entity type.
      # Extends or replaces a developer entity type at the user session level (we
      # refer to the entity types defined at the agent level as "developer entity
      # types").
      # Note: session entity types apply to all queries, regardless of the language.
      class GoogleCloudDialogflowV2beta1SessionEntityType
        include Google::Apis::Core::Hashable
      
        # Required. The collection of entities associated with this session entity
        # type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates whether the additional data should override or
        # supplement the developer entity type definition.
        # Corresponds to the JSON property `entityOverrideMode`
        # @return [String]
        attr_accessor :entity_override_mode
      
        # Required. The unique identifier of this session entity type. Format:
        # `projects/<Project ID>/agent/sessions/<Session ID>/entityTypes/<Entity Type
        # Display Name>`, or
        # `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
        # ID>/sessions/<Session ID>/entityTypes/<Entity Type Display Name>`.
        # If `Environment ID` is not specified, we assume default 'draft'
        # environment. If `User ID` is not specified, we assume default '-' user.
        # `<Entity Type Display Name>` must be the display name of an existing entity
        # type in the same agent that will be overridden or supplemented.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @entity_override_mode = args[:entity_override_mode] if args.key?(:entity_override_mode)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The top-level message sent by the client to the `StreamingAnalyzeContent`
      # method.
      # Multiple request messages must be sent in the following order:
      # 1.  The first message must contain `participant` and `config` fields. To
      # receive an audio response, the first message must also contain the
      # `reply_audio_config` field. The first message must not contain `input`.
      # 2.  All subsequent messages must contain only input data. Specifically:
      # - If the `config` in the first message was set to `audio_config`, then
      # all subsequent messages must contain only `input_audio`. It is a good
      # practice to split the input audio into short chunks and deliver each
      # chunk in a separate message.
      # - If the `config` in the first message was set to `text_config`, then
      # the second message must contain only `input_text`. Moreover, the
      # `input_text` field can be only sent once.
      # After all input is delivered, the client must half-close, or abort the
      # request stream.
      class GoogleCloudDialogflowV2beta1StreamingAnalyzeContentRequest
        include Google::Apis::Core::Hashable
      
        # Instructs the speech recognizer how to process the audio content.
        # Corresponds to the JSON property `audioConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InputAudioConfig]
        attr_accessor :audio_config
      
        # The input audio content to be recognized. Must be sent if `audio_config`
        # is set in the first message. The complete audio over all streaming
        # messages must not exceed 1 minute.
        # Corresponds to the JSON property `inputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :input_audio
      
        # The UTF-8 encoded natural language text to be processed. Must be sent if
        # `text_config` is set in the first message. Text length must not exceed
        # 256 bytes. The `input_text` field can be only sent once.
        # Corresponds to the JSON property `inputText`
        # @return [String]
        attr_accessor :input_text
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `replyAudioConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OutputAudioConfig]
        attr_accessor :reply_audio_config
      
        # Defines the language used in the input text.
        # Corresponds to the JSON property `textConfig`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1InputTextConfig]
        attr_accessor :text_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_config = args[:audio_config] if args.key?(:audio_config)
          @input_audio = args[:input_audio] if args.key?(:input_audio)
          @input_text = args[:input_text] if args.key?(:input_text)
          @reply_audio_config = args[:reply_audio_config] if args.key?(:reply_audio_config)
          @text_config = args[:text_config] if args.key?(:text_config)
        end
      end
      
      # The top-level message returned from the `StreamingAnalyzeContent` method.
      # Multiple response messages can be returned in order:
      # 1.  If the input was set to streaming audio, the first one or more messages
      # contain `recognition_result`. Each `recognition_result` represents a more
      # complete transcript of what the user said. The last `recognition_result`
      # has `is_final` set to `true`.
      # 2.  The next message contains `reply_text` and optionally `reply_audio`
      # returned by an agent. This message may also contain
      # `automated_agent_reply`.
      class GoogleCloudDialogflowV2beta1StreamingAnalyzeContentResponse
        include Google::Apis::Core::Hashable
      
        # Represent a response from an automated agent.
        # Corresponds to the JSON property `automatedAgentReply`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1AutomatedAgentReply]
        attr_accessor :automated_agent_reply
      
        # Contains a speech recognition result corresponding to a portion of the audio
        # that is currently being processed or an indication that this is the end
        # of the single requested utterance.
        # Example:
        # 1.  transcript: "tube"
        # 2.  transcript: "to be a"
        # 3.  transcript: "to be"
        # 4.  transcript: "to be or not to be"
        # is_final: true
        # 5.  transcript: " that's"
        # 6.  transcript: " that is"
        # 7.  recognition_event_type: `RECOGNITION_EVENT_END_OF_SINGLE_UTTERANCE`
        # 8.  transcript: " that is the question"
        # is_final: true
        # Only two of the responses contain final results (#4 and #8 indicated by
        # `is_final: true`). Concatenating these generates the full transcript: "to be
        # or not to be that is the question".
        # In each response we populate:
        # *  for `MESSAGE_TYPE_TRANSCRIPT`: `transcript` and possibly `is_final`.
        # *  for `MESSAGE_TYPE_END_OF_SINGLE_UTTERANCE`: only `event_type`.
        # Corresponds to the JSON property `recognitionResult`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1StreamingRecognitionResult]
        attr_accessor :recognition_result
      
        # Represents the natural language speech audio to be played to the end user.
        # Corresponds to the JSON property `replyAudio`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OutputAudio]
        attr_accessor :reply_audio
      
        # Optional. The output text content.
        # This field is set if an automated agent responded with a text for the user.
        # Corresponds to the JSON property `replyText`
        # @return [String]
        attr_accessor :reply_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_agent_reply = args[:automated_agent_reply] if args.key?(:automated_agent_reply)
          @recognition_result = args[:recognition_result] if args.key?(:recognition_result)
          @reply_audio = args[:reply_audio] if args.key?(:reply_audio)
          @reply_text = args[:reply_text] if args.key?(:reply_text)
        end
      end
      
      # Contains a speech recognition result corresponding to a portion of the audio
      # that is currently being processed or an indication that this is the end
      # of the single requested utterance.
      # Example:
      # 1.  transcript: "tube"
      # 2.  transcript: "to be a"
      # 3.  transcript: "to be"
      # 4.  transcript: "to be or not to be"
      # is_final: true
      # 5.  transcript: " that's"
      # 6.  transcript: " that is"
      # 7.  recognition_event_type: `RECOGNITION_EVENT_END_OF_SINGLE_UTTERANCE`
      # 8.  transcript: " that is the question"
      # is_final: true
      # Only two of the responses contain final results (#4 and #8 indicated by
      # `is_final: true`). Concatenating these generates the full transcript: "to be
      # or not to be that is the question".
      # In each response we populate:
      # *  for `MESSAGE_TYPE_TRANSCRIPT`: `transcript` and possibly `is_final`.
      # *  for `MESSAGE_TYPE_END_OF_SINGLE_UTTERANCE`: only `event_type`.
      class GoogleCloudDialogflowV2beta1StreamingRecognitionResult
        include Google::Apis::Core::Hashable
      
        # The Speech confidence between 0.0 and 1.0 for the current portion of audio.
        # A higher number indicates an estimated greater likelihood that the
        # recognized words are correct. The default of 0.0 is a sentinel value
        # indicating that confidence was not set.
        # This field is typically only provided if `is_final` is true and you should
        # not rely on it being accurate or even set.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The default of 0.0 is a sentinel value indicating `confidence` was not set.
        # If `false`, the `StreamingRecognitionResult` represents an
        # interim result that may change. If `true`, the recognizer will not return
        # any further hypotheses about this piece of the audio. May only be populated
        # for `event_type` = `RECOGNITION_EVENT_TRANSCRIPT`.
        # Corresponds to the JSON property `isFinal`
        # @return [Boolean]
        attr_accessor :is_final
        alias_method :is_final?, :is_final
      
        # Type of the result message.
        # Corresponds to the JSON property `messageType`
        # @return [String]
        attr_accessor :message_type
      
        # Transcript text representing the words that the user spoke.
        # Populated if and only if `event_type` = `RECOGNITION_EVENT_TRANSCRIPT`.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @is_final = args[:is_final] if args.key?(:is_final)
          @message_type = args[:message_type] if args.key?(:message_type)
          @transcript = args[:transcript] if args.key?(:transcript)
        end
      end
      
      # Represents a suggestion for a human agent.
      class GoogleCloudDialogflowV2beta1Suggestion
        include Google::Apis::Core::Hashable
      
        # Output only. Articles ordered by score in descending order.
        # Corresponds to the JSON property `articles`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestionArticle>]
        attr_accessor :articles
      
        # Output only. The time the suggestion was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Answers extracted from FAQ documents.
        # Corresponds to the JSON property `faqAnswers`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1SuggestionFaqAnswer>]
        attr_accessor :faq_answers
      
        # Output only. The name of this suggestion. Format:
        # `projects/<Project ID>/conversations/<Conversation
        # ID>/participants/*/suggestions/<Suggestion ID>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @articles = args[:articles] if args.key?(:articles)
          @create_time = args[:create_time] if args.key?(:create_time)
          @faq_answers = args[:faq_answers] if args.key?(:faq_answers)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents suggested article.
      class GoogleCloudDialogflowV2beta1SuggestionArticle
        include Google::Apis::Core::Hashable
      
        # Output only. A map that contains metadata about the answer and the
        # document from which it originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Output only. Article snippets.
        # Corresponds to the JSON property `snippets`
        # @return [Array<String>]
        attr_accessor :snippets
      
        # Output only. The article title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. The article URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @snippets = args[:snippets] if args.key?(:snippets)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents suggested answer from "frequently asked questions".
      class GoogleCloudDialogflowV2beta1SuggestionFaqAnswer
        include Google::Apis::Core::Hashable
      
        # Output only. The piece of text from the `source` knowledge base document.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # The system's confidence score that this Knowledge answer is a good match
        # for this conversational query, range from 0.0 (completely uncertain)
        # to 1.0 (completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Output only. A map that contains metadata about the answer and the
        # document from which it originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Output only. The corresponding FAQ question.
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # Output only. Indicates which Knowledge Document this answer was extracted
        # from.
        # Format: `projects/<Project ID>/agent/knowledgeBases/<Knowledge Base
        # ID>/documents/<Document ID>`.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @confidence = args[:confidence] if args.key?(:confidence)
          @metadata = args[:metadata] if args.key?(:metadata)
          @question = args[:question] if args.key?(:question)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Configuration of how speech should be synthesized.
      class GoogleCloudDialogflowV2beta1SynthesizeSpeechConfig
        include Google::Apis::Core::Hashable
      
        # Optional. An identifier which selects 'audio effects' profiles that are
        # applied on (post synthesized) text to speech. Effects are applied on top of
        # each other in the order they are given.
        # Corresponds to the JSON property `effectsProfileId`
        # @return [Array<String>]
        attr_accessor :effects_profile_id
      
        # Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20
        # semitones from the original pitch. -20 means decrease 20 semitones from the
        # original pitch.
        # Corresponds to the JSON property `pitch`
        # @return [Float]
        attr_accessor :pitch
      
        # Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal
        # native speed supported by the specific voice. 2.0 is twice as fast, and
        # 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any
        # other values < 0.25 or > 4.0 will return an error.
        # Corresponds to the JSON property `speakingRate`
        # @return [Float]
        attr_accessor :speaking_rate
      
        # Description of which voice to use for speech synthesis.
        # Corresponds to the JSON property `voice`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1VoiceSelectionParams]
        attr_accessor :voice
      
        # Optional. Volume gain (in dB) of the normal native volume supported by the
        # specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of
        # 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB)
        # will play at approximately half the amplitude of the normal native signal
        # amplitude. A value of +6.0 (dB) will play at approximately twice the
        # amplitude of the normal native signal amplitude. We strongly recommend not
        # to exceed +10 (dB) as there's usually no effective increase in loudness for
        # any value greater than that.
        # Corresponds to the JSON property `volumeGainDb`
        # @return [Float]
        attr_accessor :volume_gain_db
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @effects_profile_id = args[:effects_profile_id] if args.key?(:effects_profile_id)
          @pitch = args[:pitch] if args.key?(:pitch)
          @speaking_rate = args[:speaking_rate] if args.key?(:speaking_rate)
          @voice = args[:voice] if args.key?(:voice)
          @volume_gain_db = args[:volume_gain_db] if args.key?(:volume_gain_db)
        end
      end
      
      # Represents the natural language text to be processed.
      class GoogleCloudDialogflowV2beta1TextInput
        include Google::Apis::Core::Hashable
      
        # Required. The language of this conversational query. See [Language
        # Support](https://dialogflow.com/docs/languages) for a list of the
        # currently supported language codes. Note that queries in the same session
        # do not necessarily need to specify the same language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The UTF-8 encoded natural language text to be processed.
        # Text length must not exceed 256 bytes.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The request message for Agents.TrainAgent.
      class GoogleCloudDialogflowV2beta1TrainAgentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for PhoneNumbers.UndeletePhoneNumber.
      class GoogleCloudDialogflowV2beta1UndeletePhoneNumberRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Description of which voice to use for speech synthesis.
      class GoogleCloudDialogflowV2beta1VoiceSelectionParams
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the voice. If not set, the service will choose a
        # voice based on the other parameters such as language_code and gender.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The preferred gender of the voice. If not set, the service will
        # choose a voice based on the other parameters such as language_code and
        # name. Note that this is only a preference, not requirement. If a
        # voice of the appropriate gender is not available, the synthesizer should
        # substitute a voice with a different gender rather than failing the request.
        # Corresponds to the JSON property `ssmlGender`
        # @return [String]
        attr_accessor :ssml_gender
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @ssml_gender = args[:ssml_gender] if args.key?(:ssml_gender)
        end
      end
      
      # The request message for a webhook call.
      class GoogleCloudDialogflowV2beta1WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Alternative query results from KnowledgeService.
        # Corresponds to the JSON property `alternativeQueryResults`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1QueryResult>]
        attr_accessor :alternative_query_results
      
        # Represents the contents of the original request that was passed to
        # the `[Streaming]DetectIntent` call.
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1QueryResult]
        attr_accessor :query_result
      
        # The unique identifier of the response. Contains the same value as
        # `[Streaming]DetectIntentResponse.response_id`.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # The unique identifier of detectIntent request session.
        # Can be used to identify end-user inside webhook implementation.
        # Format: `projects/<Project ID>/agent/sessions/<Session ID>`.
        # Corresponds to the JSON property `session`
        # @return [String]
        attr_accessor :session
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_query_results = args[:alternative_query_results] if args.key?(:alternative_query_results)
          @original_detect_intent_request = args[:original_detect_intent_request] if args.key?(:original_detect_intent_request)
          @query_result = args[:query_result] if args.key?(:query_result)
          @response_id = args[:response_id] if args.key?(:response_id)
          @session = args[:session] if args.key?(:session)
        end
      end
      
      # The response message for a webhook call.
      class GoogleCloudDialogflowV2beta1WebhookResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates that this intent ends an interaction. Some integrations
        # (e.g., Actions on Google or Dialogflow phone gateway) use this information
        # to close interaction with an end user. Default is false.
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # Events allow for matching intents by event name instead of the natural
        # language input. For instance, input `<event: ` name: “welcome_event”,
        # parameters: ` name: “Sam” ` `>` can trigger a personalized welcome response.
        # The parameter `name` may be used by the agent in the response:
        # `“Hello #welcome_event.name! What can I do for you today?”`.
        # Corresponds to the JSON property `followupEventInput`
        # @return [Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1EventInput]
        attr_accessor :followup_event_input
      
        # Optional. The collection of rich messages to present to the user. This
        # value is passed directly to `QueryResult.fulfillment_messages`.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # Optional. The text to be shown on the screen. This value is passed directly
        # to `QueryResult.fulfillment_text`.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # Optional. The collection of output contexts. This value is passed directly
        # to `QueryResult.output_contexts`.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV2beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # Optional. This value is passed directly to `QueryResult.webhook_payload`.
        # See the related `fulfillment_messages[i].payload field`, which may be used
        # as an alternative to this field.
        # This field can be used for Actions on Google responses.
        # It should have a structure similar to the JSON message shown here. For more
        # information, see
        # [Actions on Google Webhook
        # Format](https://developers.google.com/actions/dialogflow/webhook)
        # <pre>`
        # "google": `
        # "expectUserResponse": true,
        # "richResponse": `
        # "items": [
        # `
        # "simpleResponse": `
        # "textToSpeech": "this is a simple response"
        # `
        # `
        # ]
        # `
        # `
        # `</pre>
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. This value is passed directly to `QueryResult.webhook_source`.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @followup_event_input = args[:followup_event_input] if args.key?(:followup_event_input)
          @fulfillment_messages = args[:fulfillment_messages] if args.key?(:fulfillment_messages)
          @fulfillment_text = args[:fulfillment_text] if args.key?(:fulfillment_text)
          @output_contexts = args[:output_contexts] if args.key?(:output_contexts)
          @payload = args[:payload] if args.key?(:payload)
          @source = args[:source] if args.key?(:source)
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
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV2beta1::GoogleRpcStatus]
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
        # `name` should have the format of `operations/some/unique/name`.
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
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
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the
      # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
      # standard</a>. Values must be within normalized ranges.
      class GoogleTypeLatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
    end
  end
end
