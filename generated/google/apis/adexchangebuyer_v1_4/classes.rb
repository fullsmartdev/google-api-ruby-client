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
    module AdexchangebuyerV1_4
      
      # Configuration data for an Ad Exchange buyer account.
      class Account
        include Google::Apis::Core::Hashable
      
        # Your bidder locations that have distinct URLs.
        # Corresponds to the JSON property `bidderLocation`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Account::BidderLocation>]
        attr_accessor :bidder_location
      
        # The nid parameter value used in cookie match requests. Please contact your
        # technical account manager if you need to change this.
        # Corresponds to the JSON property `cookieMatchingNid`
        # @return [String]
        attr_accessor :cookie_matching_nid
      
        # The base URL used in cookie match requests.
        # Corresponds to the JSON property `cookieMatchingUrl`
        # @return [String]
        attr_accessor :cookie_matching_url
      
        # Account id.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The maximum number of active creatives that an account can have, where a
        # creative is active if it was inserted or bid with in the last 30 days. Please
        # contact your technical account manager if you need to change this.
        # Corresponds to the JSON property `maximumActiveCreatives`
        # @return [Fixnum]
        attr_accessor :maximum_active_creatives
      
        # The sum of all bidderLocation.maximumQps values cannot exceed this. Please
        # contact your technical account manager if you need to change this.
        # Corresponds to the JSON property `maximumTotalQps`
        # @return [Fixnum]
        attr_accessor :maximum_total_qps
      
        # The number of creatives that this account inserted or bid with in the last 30
        # days.
        # Corresponds to the JSON property `numberActiveCreatives`
        # @return [Fixnum]
        attr_accessor :number_active_creatives
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bidder_location = args[:bidder_location] if args.key?(:bidder_location)
          @cookie_matching_nid = args[:cookie_matching_nid] if args.key?(:cookie_matching_nid)
          @cookie_matching_url = args[:cookie_matching_url] if args.key?(:cookie_matching_url)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @maximum_active_creatives = args[:maximum_active_creatives] if args.key?(:maximum_active_creatives)
          @maximum_total_qps = args[:maximum_total_qps] if args.key?(:maximum_total_qps)
          @number_active_creatives = args[:number_active_creatives] if args.key?(:number_active_creatives)
        end
        
        # 
        class BidderLocation
          include Google::Apis::Core::Hashable
        
          # The maximum queries per second the Ad Exchange will send.
          # Corresponds to the JSON property `maximumQps`
          # @return [Fixnum]
          attr_accessor :maximum_qps
        
          # The geographical region the Ad Exchange should send requests from. Only used
          # by some quota systems, but always setting the value is recommended. Allowed
          # values:
          # - ASIA
          # - EUROPE
          # - US_EAST
          # - US_WEST
          # Corresponds to the JSON property `region`
          # @return [String]
          attr_accessor :region
        
          # The URL to which the Ad Exchange will send bid requests.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @maximum_qps = args[:maximum_qps] if args.key?(:maximum_qps)
            @region = args[:region] if args.key?(:region)
            @url = args[:url] if args.key?(:url)
          end
        end
      end
      
      # An account feed lists Ad Exchange buyer accounts that the user has access to.
      # Each entry in the feed corresponds to a single buyer account.
      class AccountsList
        include Google::Apis::Core::Hashable
      
        # A list of accounts.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Account>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class AddOrderDealsRequest
        include Google::Apis::Core::Hashable
      
        # The list of deals to add
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceDeal>]
        attr_accessor :deals
      
        # The last known proposal revision number.
        # Corresponds to the JSON property `proposalRevisionNumber`
        # @return [String]
        attr_accessor :proposal_revision_number
      
        # Indicates an optional action to take on the proposal
        # Corresponds to the JSON property `updateAction`
        # @return [String]
        attr_accessor :update_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
          @proposal_revision_number = args[:proposal_revision_number] if args.key?(:proposal_revision_number)
          @update_action = args[:update_action] if args.key?(:update_action)
        end
      end
      
      # 
      class AddOrderDealsResponse
        include Google::Apis::Core::Hashable
      
        # List of deals added (in the same proposal as passed in the request)
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceDeal>]
        attr_accessor :deals
      
        # The updated revision number for the proposal.
        # Corresponds to the JSON property `proposalRevisionNumber`
        # @return [String]
        attr_accessor :proposal_revision_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
          @proposal_revision_number = args[:proposal_revision_number] if args.key?(:proposal_revision_number)
        end
      end
      
      # 
      class AddOrderNotesRequest
        include Google::Apis::Core::Hashable
      
        # The list of notes to add.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceNote>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # 
      class AddOrderNotesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceNote>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # The configuration data for an Ad Exchange billing info.
      class BillingInfo
        include Google::Apis::Core::Hashable
      
        # Account id.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Account name.
        # Corresponds to the JSON property `accountName`
        # @return [String]
        attr_accessor :account_name
      
        # A list of adgroup IDs associated with this particular account. These IDs may
        # show up as part of a realtime bidding BidRequest, which indicates a bid
        # request for this account.
        # Corresponds to the JSON property `billingId`
        # @return [Array<String>]
        attr_accessor :billing_id
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @account_name = args[:account_name] if args.key?(:account_name)
          @billing_id = args[:billing_id] if args.key?(:billing_id)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A billing info feed lists Billing Info the Ad Exchange buyer account has
      # access to. Each entry in the feed corresponds to a single billing info.
      class BillingInfoList
        include Google::Apis::Core::Hashable
      
        # A list of billing info relevant for your account.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::BillingInfo>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The configuration data for Ad Exchange RTB - Budget API.
      class Budget
        include Google::Apis::Core::Hashable
      
        # The id of the account. This is required for get and update requests.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The billing id to determine which adgroup to provide budget information for.
        # This is required for get and update requests.
        # Corresponds to the JSON property `billingId`
        # @return [String]
        attr_accessor :billing_id
      
        # The daily budget amount in unit amount of the account currency to apply for
        # the billingId provided. This is required for update requests.
        # Corresponds to the JSON property `budgetAmount`
        # @return [String]
        attr_accessor :budget_amount
      
        # The currency code for the buyer. This cannot be altered here.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The unique id that describes this item.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of the resource, i.e. "adexchangebuyer#budget".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @billing_id = args[:billing_id] if args.key?(:billing_id)
          @budget_amount = args[:budget_amount] if args.key?(:budget_amount)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class Buyer
        include Google::Apis::Core::Hashable
      
        # Adx account id of the buyer.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
        end
      end
      
      # 
      class ContactInformation
        include Google::Apis::Core::Hashable
      
        # Email address of the contact.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The name of the contact.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class CreateOrdersRequest
        include Google::Apis::Core::Hashable
      
        # The list of proposals to create.
        # Corresponds to the JSON property `proposals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Proposal>]
        attr_accessor :proposals
      
        # 
        # Corresponds to the JSON property `webPropertyCode`
        # @return [String]
        attr_accessor :web_property_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proposals = args[:proposals] if args.key?(:proposals)
          @web_property_code = args[:web_property_code] if args.key?(:web_property_code)
        end
      end
      
      # 
      class CreateOrdersResponse
        include Google::Apis::Core::Hashable
      
        # The list of proposals successfully created.
        # Corresponds to the JSON property `proposals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Proposal>]
        attr_accessor :proposals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proposals = args[:proposals] if args.key?(:proposals)
        end
      end
      
      # A creative and its classification data.
      class Creative
        include Google::Apis::Core::Hashable
      
        # The HTML snippet that displays the ad when inserted in the web page. If set,
        # videoURL should not be set.
        # Corresponds to the JSON property `HTMLSnippet`
        # @return [String]
        attr_accessor :html_snippet
      
        # Account id.
        # Corresponds to the JSON property `accountId`
        # @return [Fixnum]
        attr_accessor :account_id
      
        # Detected advertiser id, if any. Read-only. This field should not be set in
        # requests.
        # Corresponds to the JSON property `advertiserId`
        # @return [Array<String>]
        attr_accessor :advertiser_id
      
        # The name of the company being advertised in the creative.
        # Corresponds to the JSON property `advertiserName`
        # @return [String]
        attr_accessor :advertiser_name
      
        # The agency id for this creative.
        # Corresponds to the JSON property `agencyId`
        # @return [String]
        attr_accessor :agency_id
      
        # The last upload timestamp of this creative if it was uploaded via API. Read-
        # only. The value of this field is generated, and will be ignored for uploads. (
        # formatted RFC 3339 timestamp).
        # Corresponds to the JSON property `apiUploadTimestamp`
        # @return [DateTime]
        attr_accessor :api_upload_timestamp
      
        # All attributes for the ads that may be shown from this snippet.
        # Corresponds to the JSON property `attribute`
        # @return [Array<Fixnum>]
        attr_accessor :attribute
      
        # A buyer-specific id identifying the creative in this ad.
        # Corresponds to the JSON property `buyerCreativeId`
        # @return [String]
        attr_accessor :buyer_creative_id
      
        # The set of destination urls for the snippet.
        # Corresponds to the JSON property `clickThroughUrl`
        # @return [Array<String>]
        attr_accessor :click_through_url
      
        # Shows any corrections that were applied to this creative. Read-only. This
        # field should not be set in requests.
        # Corresponds to the JSON property `corrections`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Creative::Correction>]
        attr_accessor :corrections
      
        # Top-level deals status. Read-only. This field should not be set in requests.
        # If disapproved, an entry for auctionType=DIRECT_DEALS (or ALL) in
        # servingRestrictions will also exist. Note that this may be nuanced with other
        # contextual restrictions, in which case it may be preferable to read from
        # servingRestrictions directly.
        # Corresponds to the JSON property `dealsStatus`
        # @return [String]
        attr_accessor :deals_status
      
        # The filtering reasons for the creative. Read-only. This field should not be
        # set in requests.
        # Corresponds to the JSON property `filteringReasons`
        # @return [Google::Apis::AdexchangebuyerV1_4::Creative::FilteringReasons]
        attr_accessor :filtering_reasons
      
        # Ad height.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The set of urls to be called to record an impression.
        # Corresponds to the JSON property `impressionTrackingUrl`
        # @return [Array<String>]
        attr_accessor :impression_tracking_url
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # If nativeAd is set, HTMLSnippet and videoURL should not be set.
        # Corresponds to the JSON property `nativeAd`
        # @return [Google::Apis::AdexchangebuyerV1_4::Creative::NativeAd]
        attr_accessor :native_ad
      
        # Top-level open auction status. Read-only. This field should not be set in
        # requests. If disapproved, an entry for auctionType=OPEN_AUCTION (or ALL) in
        # servingRestrictions will also exist. Note that this may be nuanced with other
        # contextual restrictions, in which case it may be preferable to read from
        # ServingRestrictions directly.
        # Corresponds to the JSON property `openAuctionStatus`
        # @return [String]
        attr_accessor :open_auction_status
      
        # Detected product categories, if any. Read-only. This field should not be set
        # in requests.
        # Corresponds to the JSON property `productCategories`
        # @return [Array<Fixnum>]
        attr_accessor :product_categories
      
        # All restricted categories for the ads that may be shown from this snippet.
        # Corresponds to the JSON property `restrictedCategories`
        # @return [Array<Fixnum>]
        attr_accessor :restricted_categories
      
        # Detected sensitive categories, if any. Read-only. This field should not be set
        # in requests.
        # Corresponds to the JSON property `sensitiveCategories`
        # @return [Array<Fixnum>]
        attr_accessor :sensitive_categories
      
        # The granular status of this ad in specific contexts. A context here relates to
        # where something ultimately serves (for example, a physical location, a
        # platform, an HTTPS vs HTTP request, or the type of auction). Read-only. This
        # field should not be set in requests.
        # Corresponds to the JSON property `servingRestrictions`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Creative::ServingRestriction>]
        attr_accessor :serving_restrictions
      
        # All vendor types for the ads that may be shown from this snippet.
        # Corresponds to the JSON property `vendorType`
        # @return [Array<Fixnum>]
        attr_accessor :vendor_type
      
        # The version for this creative. Read-only. This field should not be set in
        # requests.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        # The url to fetch a video ad. If set, HTMLSnippet should not be set.
        # Corresponds to the JSON property `videoURL`
        # @return [String]
        attr_accessor :video_url
      
        # Ad width.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @html_snippet = args[:html_snippet] if args.key?(:html_snippet)
          @account_id = args[:account_id] if args.key?(:account_id)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @advertiser_name = args[:advertiser_name] if args.key?(:advertiser_name)
          @agency_id = args[:agency_id] if args.key?(:agency_id)
          @api_upload_timestamp = args[:api_upload_timestamp] if args.key?(:api_upload_timestamp)
          @attribute = args[:attribute] if args.key?(:attribute)
          @buyer_creative_id = args[:buyer_creative_id] if args.key?(:buyer_creative_id)
          @click_through_url = args[:click_through_url] if args.key?(:click_through_url)
          @corrections = args[:corrections] if args.key?(:corrections)
          @deals_status = args[:deals_status] if args.key?(:deals_status)
          @filtering_reasons = args[:filtering_reasons] if args.key?(:filtering_reasons)
          @height = args[:height] if args.key?(:height)
          @impression_tracking_url = args[:impression_tracking_url] if args.key?(:impression_tracking_url)
          @kind = args[:kind] if args.key?(:kind)
          @native_ad = args[:native_ad] if args.key?(:native_ad)
          @open_auction_status = args[:open_auction_status] if args.key?(:open_auction_status)
          @product_categories = args[:product_categories] if args.key?(:product_categories)
          @restricted_categories = args[:restricted_categories] if args.key?(:restricted_categories)
          @sensitive_categories = args[:sensitive_categories] if args.key?(:sensitive_categories)
          @serving_restrictions = args[:serving_restrictions] if args.key?(:serving_restrictions)
          @vendor_type = args[:vendor_type] if args.key?(:vendor_type)
          @version = args[:version] if args.key?(:version)
          @video_url = args[:video_url] if args.key?(:video_url)
          @width = args[:width] if args.key?(:width)
        end
        
        # 
        class Correction
          include Google::Apis::Core::Hashable
        
          # Additional details about the correction.
          # Corresponds to the JSON property `details`
          # @return [Array<String>]
          attr_accessor :details
        
          # The type of correction that was applied to the creative.
          # Corresponds to the JSON property `reason`
          # @return [String]
          attr_accessor :reason
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @details = args[:details] if args.key?(:details)
            @reason = args[:reason] if args.key?(:reason)
          end
        end
        
        # The filtering reasons for the creative. Read-only. This field should not be
        # set in requests.
        class FilteringReasons
          include Google::Apis::Core::Hashable
        
          # The date in ISO 8601 format for the data. The data is collected from 00:00:00
          # to 23:59:59 in PST.
          # Corresponds to the JSON property `date`
          # @return [String]
          attr_accessor :date
        
          # The filtering reasons.
          # Corresponds to the JSON property `reasons`
          # @return [Array<Google::Apis::AdexchangebuyerV1_4::Creative::FilteringReasons::Reason>]
          attr_accessor :reasons
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @date = args[:date] if args.key?(:date)
            @reasons = args[:reasons] if args.key?(:reasons)
          end
          
          # 
          class Reason
            include Google::Apis::Core::Hashable
          
            # The number of times the creative was filtered for the status. The count is
            # aggregated across all publishers on the exchange.
            # Corresponds to the JSON property `filteringCount`
            # @return [String]
            attr_accessor :filtering_count
          
            # The filtering status code. Please refer to the creative-status-codes.txt file
            # for different statuses.
            # Corresponds to the JSON property `filteringStatus`
            # @return [Fixnum]
            attr_accessor :filtering_status
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @filtering_count = args[:filtering_count] if args.key?(:filtering_count)
              @filtering_status = args[:filtering_status] if args.key?(:filtering_status)
            end
          end
        end
        
        # If nativeAd is set, HTMLSnippet and videoURL should not be set.
        class NativeAd
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `advertiser`
          # @return [String]
          attr_accessor :advertiser
        
          # The app icon, for app download ads.
          # Corresponds to the JSON property `appIcon`
          # @return [Google::Apis::AdexchangebuyerV1_4::Creative::NativeAd::AppIcon]
          attr_accessor :app_icon
        
          # A long description of the ad.
          # Corresponds to the JSON property `body`
          # @return [String]
          attr_accessor :body
        
          # A label for the button that the user is supposed to click.
          # Corresponds to the JSON property `callToAction`
          # @return [String]
          attr_accessor :call_to_action
        
          # The URL to use for click tracking.
          # Corresponds to the JSON property `clickTrackingUrl`
          # @return [String]
          attr_accessor :click_tracking_url
        
          # A short title for the ad.
          # Corresponds to the JSON property `headline`
          # @return [String]
          attr_accessor :headline
        
          # A large image.
          # Corresponds to the JSON property `image`
          # @return [Google::Apis::AdexchangebuyerV1_4::Creative::NativeAd::Image]
          attr_accessor :image
        
          # The URLs are called when the impression is rendered.
          # Corresponds to the JSON property `impressionTrackingUrl`
          # @return [Array<String>]
          attr_accessor :impression_tracking_url
        
          # A smaller image, for the advertiser logo.
          # Corresponds to the JSON property `logo`
          # @return [Google::Apis::AdexchangebuyerV1_4::Creative::NativeAd::Logo]
          attr_accessor :logo
        
          # The price of the promoted app including the currency info.
          # Corresponds to the JSON property `price`
          # @return [String]
          attr_accessor :price
        
          # The app rating in the app store. Must be in the range [0-5].
          # Corresponds to the JSON property `starRating`
          # @return [Float]
          attr_accessor :star_rating
        
          # The URL to the app store to purchase/download the promoted app.
          # Corresponds to the JSON property `store`
          # @return [String]
          attr_accessor :store
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @advertiser = args[:advertiser] if args.key?(:advertiser)
            @app_icon = args[:app_icon] if args.key?(:app_icon)
            @body = args[:body] if args.key?(:body)
            @call_to_action = args[:call_to_action] if args.key?(:call_to_action)
            @click_tracking_url = args[:click_tracking_url] if args.key?(:click_tracking_url)
            @headline = args[:headline] if args.key?(:headline)
            @image = args[:image] if args.key?(:image)
            @impression_tracking_url = args[:impression_tracking_url] if args.key?(:impression_tracking_url)
            @logo = args[:logo] if args.key?(:logo)
            @price = args[:price] if args.key?(:price)
            @star_rating = args[:star_rating] if args.key?(:star_rating)
            @store = args[:store] if args.key?(:store)
          end
          
          # The app icon, for app download ads.
          class AppIcon
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `height`
            # @return [Fixnum]
            attr_accessor :height
          
            # 
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # 
            # Corresponds to the JSON property `width`
            # @return [Fixnum]
            attr_accessor :width
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @height = args[:height] if args.key?(:height)
              @url = args[:url] if args.key?(:url)
              @width = args[:width] if args.key?(:width)
            end
          end
          
          # A large image.
          class Image
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `height`
            # @return [Fixnum]
            attr_accessor :height
          
            # 
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # 
            # Corresponds to the JSON property `width`
            # @return [Fixnum]
            attr_accessor :width
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @height = args[:height] if args.key?(:height)
              @url = args[:url] if args.key?(:url)
              @width = args[:width] if args.key?(:width)
            end
          end
          
          # A smaller image, for the advertiser logo.
          class Logo
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `height`
            # @return [Fixnum]
            attr_accessor :height
          
            # 
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            # 
            # Corresponds to the JSON property `width`
            # @return [Fixnum]
            attr_accessor :width
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @height = args[:height] if args.key?(:height)
              @url = args[:url] if args.key?(:url)
              @width = args[:width] if args.key?(:width)
            end
          end
        end
        
        # 
        class ServingRestriction
          include Google::Apis::Core::Hashable
        
          # All known contexts/restrictions.
          # Corresponds to the JSON property `contexts`
          # @return [Array<Google::Apis::AdexchangebuyerV1_4::Creative::ServingRestriction::Context>]
          attr_accessor :contexts
        
          # The reasons for disapproval within this restriction, if any. Note that not all
          # disapproval reasons may be categorized, so it is possible for the creative to
          # have a status of DISAPPROVED or CONDITIONALLY_APPROVED with an empty list for
          # disapproval_reasons. In this case, please reach out to your TAM to help debug
          # the issue.
          # Corresponds to the JSON property `disapprovalReasons`
          # @return [Array<Google::Apis::AdexchangebuyerV1_4::Creative::ServingRestriction::DisapprovalReason>]
          attr_accessor :disapproval_reasons
        
          # Why the creative is ineligible to serve in this context (e.g., it has been
          # explicitly disapproved or is pending review).
          # Corresponds to the JSON property `reason`
          # @return [String]
          attr_accessor :reason
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @contexts = args[:contexts] if args.key?(:contexts)
            @disapproval_reasons = args[:disapproval_reasons] if args.key?(:disapproval_reasons)
            @reason = args[:reason] if args.key?(:reason)
          end
          
          # 
          class Context
            include Google::Apis::Core::Hashable
          
            # Only set when contextType=AUCTION_TYPE. Represents the auction types this
            # restriction applies to.
            # Corresponds to the JSON property `auctionType`
            # @return [Array<String>]
            attr_accessor :auction_type
          
            # The type of context (e.g., location, platform, auction type, SSL-ness).
            # Corresponds to the JSON property `contextType`
            # @return [String]
            attr_accessor :context_type
          
            # Only set when contextType=LOCATION. Represents the geo criterias this
            # restriction applies to.
            # Corresponds to the JSON property `geoCriteriaId`
            # @return [Array<Fixnum>]
            attr_accessor :geo_criteria_id
          
            # Only set when contextType=PLATFORM. Represents the platforms this restriction
            # applies to.
            # Corresponds to the JSON property `platform`
            # @return [Array<String>]
            attr_accessor :platform
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @auction_type = args[:auction_type] if args.key?(:auction_type)
              @context_type = args[:context_type] if args.key?(:context_type)
              @geo_criteria_id = args[:geo_criteria_id] if args.key?(:geo_criteria_id)
              @platform = args[:platform] if args.key?(:platform)
            end
          end
          
          # 
          class DisapprovalReason
            include Google::Apis::Core::Hashable
          
            # Additional details about the reason for disapproval.
            # Corresponds to the JSON property `details`
            # @return [Array<String>]
            attr_accessor :details
          
            # The categorized reason for disapproval.
            # Corresponds to the JSON property `reason`
            # @return [String]
            attr_accessor :reason
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @details = args[:details] if args.key?(:details)
              @reason = args[:reason] if args.key?(:reason)
            end
          end
        end
      end
      
      # The creatives feed lists the active creatives for the Ad Exchange buyer
      # accounts that the user has access to. Each entry in the feed corresponds to a
      # single creative.
      class CreativesList
        include Google::Apis::Core::Hashable
      
        # A list of creatives.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Creative>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through creatives. To retrieve the next page
        # of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class DealTerms
        include Google::Apis::Core::Hashable
      
        # Visibilty of the URL in bid requests.
        # Corresponds to the JSON property `brandingType`
        # @return [String]
        attr_accessor :branding_type
      
        # Description for the proposed terms of the deal.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Non-binding estimate of the estimated gross spend for this deal Can be set by
        # buyer or seller.
        # Corresponds to the JSON property `estimatedGrossSpend`
        # @return [Google::Apis::AdexchangebuyerV1_4::Price]
        attr_accessor :estimated_gross_spend
      
        # Non-binding estimate of the impressions served per day Can be set by buyer or
        # seller.
        # Corresponds to the JSON property `estimatedImpressionsPerDay`
        # @return [String]
        attr_accessor :estimated_impressions_per_day
      
        # The terms for guaranteed fixed price deals.
        # Corresponds to the JSON property `guaranteedFixedPriceTerms`
        # @return [Google::Apis::AdexchangebuyerV1_4::DealTermsGuaranteedFixedPriceTerms]
        attr_accessor :guaranteed_fixed_price_terms
      
        # The terms for non-guaranteed auction deals.
        # Corresponds to the JSON property `nonGuaranteedAuctionTerms`
        # @return [Google::Apis::AdexchangebuyerV1_4::DealTermsNonGuaranteedAuctionTerms]
        attr_accessor :non_guaranteed_auction_terms
      
        # The terms for non-guaranteed fixed price deals.
        # Corresponds to the JSON property `nonGuaranteedFixedPriceTerms`
        # @return [Google::Apis::AdexchangebuyerV1_4::DealTermsNonGuaranteedFixedPriceTerms]
        attr_accessor :non_guaranteed_fixed_price_terms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branding_type = args[:branding_type] if args.key?(:branding_type)
          @description = args[:description] if args.key?(:description)
          @estimated_gross_spend = args[:estimated_gross_spend] if args.key?(:estimated_gross_spend)
          @estimated_impressions_per_day = args[:estimated_impressions_per_day] if args.key?(:estimated_impressions_per_day)
          @guaranteed_fixed_price_terms = args[:guaranteed_fixed_price_terms] if args.key?(:guaranteed_fixed_price_terms)
          @non_guaranteed_auction_terms = args[:non_guaranteed_auction_terms] if args.key?(:non_guaranteed_auction_terms)
          @non_guaranteed_fixed_price_terms = args[:non_guaranteed_fixed_price_terms] if args.key?(:non_guaranteed_fixed_price_terms)
        end
      end
      
      # 
      class DealTermsGuaranteedFixedPriceTerms
        include Google::Apis::Core::Hashable
      
        # Fixed price for the specified buyer.
        # Corresponds to the JSON property `fixedPrices`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PricePerBuyer>]
        attr_accessor :fixed_prices
      
        # Guaranteed impressions as a percentage. This is the percentage of guaranteed
        # looks that the buyer is guaranteeing to buy.
        # Corresponds to the JSON property `guaranteedImpressions`
        # @return [String]
        attr_accessor :guaranteed_impressions
      
        # Count of guaranteed looks. Required for deal, optional for product.
        # Corresponds to the JSON property `guaranteedLooks`
        # @return [String]
        attr_accessor :guaranteed_looks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_prices = args[:fixed_prices] if args.key?(:fixed_prices)
          @guaranteed_impressions = args[:guaranteed_impressions] if args.key?(:guaranteed_impressions)
          @guaranteed_looks = args[:guaranteed_looks] if args.key?(:guaranteed_looks)
        end
      end
      
      # 
      class DealTermsNonGuaranteedAuctionTerms
        include Google::Apis::Core::Hashable
      
        # Id of the corresponding private auction.
        # Corresponds to the JSON property `privateAuctionId`
        # @return [String]
        attr_accessor :private_auction_id
      
        # Reserve price for the specified buyer.
        # Corresponds to the JSON property `reservePricePerBuyers`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PricePerBuyer>]
        attr_accessor :reserve_price_per_buyers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_auction_id = args[:private_auction_id] if args.key?(:private_auction_id)
          @reserve_price_per_buyers = args[:reserve_price_per_buyers] if args.key?(:reserve_price_per_buyers)
        end
      end
      
      # 
      class DealTermsNonGuaranteedFixedPriceTerms
        include Google::Apis::Core::Hashable
      
        # Fixed price for the specified buyer.
        # Corresponds to the JSON property `fixedPrices`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PricePerBuyer>]
        attr_accessor :fixed_prices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed_prices = args[:fixed_prices] if args.key?(:fixed_prices)
        end
      end
      
      # 
      class DeleteOrderDealsRequest
        include Google::Apis::Core::Hashable
      
        # List of deals to delete for a given proposal
        # Corresponds to the JSON property `dealIds`
        # @return [Array<String>]
        attr_accessor :deal_ids
      
        # The last known proposal revision number.
        # Corresponds to the JSON property `proposalRevisionNumber`
        # @return [String]
        attr_accessor :proposal_revision_number
      
        # 
        # Corresponds to the JSON property `updateAction`
        # @return [String]
        attr_accessor :update_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deal_ids = args[:deal_ids] if args.key?(:deal_ids)
          @proposal_revision_number = args[:proposal_revision_number] if args.key?(:proposal_revision_number)
          @update_action = args[:update_action] if args.key?(:update_action)
        end
      end
      
      # 
      class DeleteOrderDealsResponse
        include Google::Apis::Core::Hashable
      
        # List of deals deleted (in the same proposal as passed in the request)
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceDeal>]
        attr_accessor :deals
      
        # The updated revision number for the proposal.
        # Corresponds to the JSON property `proposalRevisionNumber`
        # @return [String]
        attr_accessor :proposal_revision_number
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
          @proposal_revision_number = args[:proposal_revision_number] if args.key?(:proposal_revision_number)
        end
      end
      
      # 
      class DeliveryControl
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creativeBlockingLevel`
        # @return [String]
        attr_accessor :creative_blocking_level
      
        # 
        # Corresponds to the JSON property `deliveryRateType`
        # @return [String]
        attr_accessor :delivery_rate_type
      
        # 
        # Corresponds to the JSON property `frequencyCaps`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::DeliveryControlFrequencyCap>]
        attr_accessor :frequency_caps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_blocking_level = args[:creative_blocking_level] if args.key?(:creative_blocking_level)
          @delivery_rate_type = args[:delivery_rate_type] if args.key?(:delivery_rate_type)
          @frequency_caps = args[:frequency_caps] if args.key?(:frequency_caps)
        end
      end
      
      # 
      class DeliveryControlFrequencyCap
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `maxImpressions`
        # @return [Fixnum]
        attr_accessor :max_impressions
      
        # 
        # Corresponds to the JSON property `numTimeUnits`
        # @return [Fixnum]
        attr_accessor :num_time_units
      
        # 
        # Corresponds to the JSON property `timeUnitType`
        # @return [String]
        attr_accessor :time_unit_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_impressions = args[:max_impressions] if args.key?(:max_impressions)
          @num_time_units = args[:num_time_units] if args.key?(:num_time_units)
          @time_unit_type = args[:time_unit_type] if args.key?(:time_unit_type)
        end
      end
      
      # 
      class EditAllOrderDealsRequest
        include Google::Apis::Core::Hashable
      
        # List of deals to edit. Service may perform 3 different operations based on
        # comparison of deals in this list vs deals already persisted in database: 1.
        # Add new deal to proposal If a deal in this list does not exist in the proposal,
        # the service will create a new deal and add it to the proposal. Validation
        # will follow AddOrderDealsRequest. 2. Update existing deal in the proposal If a
        # deal in this list already exist in the proposal, the service will update that
        # existing deal to this new deal in the request. Validation will follow
        # UpdateOrderDealsRequest. 3. Delete deals from the proposal (just need the id)
        # If a existing deal in the proposal is not present in this list, the service
        # will delete that deal from the proposal. Validation will follow
        # DeleteOrderDealsRequest.
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceDeal>]
        attr_accessor :deals
      
        # Represents a proposal in the marketplace. A proposal is the unit of
        # negotiation between a seller and a buyer and contains deals which are served.
        # Each field in a proposal can have one of the following setting:
        # (readonly) - It is an error to try and set this field. (buyer-readonly) - Only
        # the seller can set this field. (seller-readonly) - Only the buyer can set this
        # field. (updatable) - The field is updatable at all times by either buyer or
        # the seller.
        # Corresponds to the JSON property `proposal`
        # @return [Google::Apis::AdexchangebuyerV1_4::Proposal]
        attr_accessor :proposal
      
        # The last known revision number for the proposal.
        # Corresponds to the JSON property `proposalRevisionNumber`
        # @return [String]
        attr_accessor :proposal_revision_number
      
        # Indicates an optional action to take on the proposal
        # Corresponds to the JSON property `updateAction`
        # @return [String]
        attr_accessor :update_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
          @proposal = args[:proposal] if args.key?(:proposal)
          @proposal_revision_number = args[:proposal_revision_number] if args.key?(:proposal_revision_number)
          @update_action = args[:update_action] if args.key?(:update_action)
        end
      end
      
      # 
      class EditAllOrderDealsResponse
        include Google::Apis::Core::Hashable
      
        # List of all deals in the proposal after edit.
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceDeal>]
        attr_accessor :deals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
        end
      end
      
      # 
      class GetOffersResponse
        include Google::Apis::Core::Hashable
      
        # The returned list of products.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Product>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # 
      class GetOrderDealsResponse
        include Google::Apis::Core::Hashable
      
        # List of deals for the proposal
        # Corresponds to the JSON property `deals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceDeal>]
        attr_accessor :deals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deals = args[:deals] if args.key?(:deals)
        end
      end
      
      # 
      class GetOrderNotesResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching notes.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceNote>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # 
      class GetOrdersResponse
        include Google::Apis::Core::Hashable
      
        # The list of matching proposals.
        # Corresponds to the JSON property `proposals`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::Proposal>]
        attr_accessor :proposals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proposals = args[:proposals] if args.key?(:proposals)
        end
      end
      
      # A proposal can contain multiple deals. A deal contains the terms and targeting
      # information that is used for serving.
      class MarketplaceDeal
        include Google::Apis::Core::Hashable
      
        # Buyer private data (hidden from seller).
        # Corresponds to the JSON property `buyerPrivateData`
        # @return [Google::Apis::AdexchangebuyerV1_4::PrivateData]
        attr_accessor :buyer_private_data
      
        # The time (ms since epoch) of the deal creation. (readonly)
        # Corresponds to the JSON property `creationTimeMs`
        # @return [String]
        attr_accessor :creation_time_ms
      
        # Specifies the creative pre-approval policy (buyer-readonly)
        # Corresponds to the JSON property `creativePreApprovalPolicy`
        # @return [String]
        attr_accessor :creative_pre_approval_policy
      
        # A unique deal=id for the deal (readonly).
        # Corresponds to the JSON property `dealId`
        # @return [String]
        attr_accessor :deal_id
      
        # The set of fields around delivery control that are interesting for a buyer to
        # see but are non-negotiable. These are set by the publisher. This message is
        # assigned an id of 100 since some day we would want to model this as a protobuf
        # extension.
        # Corresponds to the JSON property `deliveryControl`
        # @return [Google::Apis::AdexchangebuyerV1_4::DeliveryControl]
        attr_accessor :delivery_control
      
        # The external deal id assigned to this deal once the deal is finalized. This is
        # the deal-id that shows up in serving/reporting etc. (readonly)
        # Corresponds to the JSON property `externalDealId`
        # @return [String]
        attr_accessor :external_deal_id
      
        # Proposed flight end time of the deal (ms since epoch) This will generally be
        # stored in a granularity of a second. (updatable)
        # Corresponds to the JSON property `flightEndTimeMs`
        # @return [String]
        attr_accessor :flight_end_time_ms
      
        # Proposed flight start time of the deal (ms since epoch) This will generally be
        # stored in a granularity of a second. (updatable)
        # Corresponds to the JSON property `flightStartTimeMs`
        # @return [String]
        attr_accessor :flight_start_time_ms
      
        # Description for the deal terms. (updatable)
        # Corresponds to the JSON property `inventoryDescription`
        # @return [String]
        attr_accessor :inventory_description
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # adexchangebuyer#marketplaceDeal".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time (ms since epoch) when the deal was last updated. (readonly)
        # Corresponds to the JSON property `lastUpdateTimeMs`
        # @return [String]
        attr_accessor :last_update_time_ms
      
        # The name of the deal. (updatable)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The product-id from which this deal was created. (readonly, except on create)
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The revision number of the product that the deal was created from (readonly,
        # except on create)
        # Corresponds to the JSON property `productRevisionNumber`
        # @return [String]
        attr_accessor :product_revision_number
      
        # 
        # Corresponds to the JSON property `proposalId`
        # @return [String]
        attr_accessor :proposal_id
      
        # Optional Seller contact information for the deal (buyer-readonly)
        # Corresponds to the JSON property `sellerContacts`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::ContactInformation>]
        attr_accessor :seller_contacts
      
        # The shared targeting visible to buyers and sellers. (updatable)
        # Corresponds to the JSON property `sharedTargetings`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::SharedTargeting>]
        attr_accessor :shared_targetings
      
        # The syndication product associated with the deal. (readonly, except on create)
        # Corresponds to the JSON property `syndicationProduct`
        # @return [String]
        attr_accessor :syndication_product
      
        # The negotiable terms of the deal. (updatable)
        # Corresponds to the JSON property `terms`
        # @return [Google::Apis::AdexchangebuyerV1_4::DealTerms]
        attr_accessor :terms
      
        # 
        # Corresponds to the JSON property `webPropertyCode`
        # @return [String]
        attr_accessor :web_property_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buyer_private_data = args[:buyer_private_data] if args.key?(:buyer_private_data)
          @creation_time_ms = args[:creation_time_ms] if args.key?(:creation_time_ms)
          @creative_pre_approval_policy = args[:creative_pre_approval_policy] if args.key?(:creative_pre_approval_policy)
          @deal_id = args[:deal_id] if args.key?(:deal_id)
          @delivery_control = args[:delivery_control] if args.key?(:delivery_control)
          @external_deal_id = args[:external_deal_id] if args.key?(:external_deal_id)
          @flight_end_time_ms = args[:flight_end_time_ms] if args.key?(:flight_end_time_ms)
          @flight_start_time_ms = args[:flight_start_time_ms] if args.key?(:flight_start_time_ms)
          @inventory_description = args[:inventory_description] if args.key?(:inventory_description)
          @kind = args[:kind] if args.key?(:kind)
          @last_update_time_ms = args[:last_update_time_ms] if args.key?(:last_update_time_ms)
          @name = args[:name] if args.key?(:name)
          @product_id = args[:product_id] if args.key?(:product_id)
          @product_revision_number = args[:product_revision_number] if args.key?(:product_revision_number)
          @proposal_id = args[:proposal_id] if args.key?(:proposal_id)
          @seller_contacts = args[:seller_contacts] if args.key?(:seller_contacts)
          @shared_targetings = args[:shared_targetings] if args.key?(:shared_targetings)
          @syndication_product = args[:syndication_product] if args.key?(:syndication_product)
          @terms = args[:terms] if args.key?(:terms)
          @web_property_code = args[:web_property_code] if args.key?(:web_property_code)
        end
      end
      
      # 
      class MarketplaceDealParty
        include Google::Apis::Core::Hashable
      
        # The buyer/seller associated with the deal. One of buyer/seller is specified
        # for a deal-party.
        # Corresponds to the JSON property `buyer`
        # @return [Google::Apis::AdexchangebuyerV1_4::Buyer]
        attr_accessor :buyer
      
        # The buyer/seller associated with the deal. One of buyer/seller is specified
        # for a deal party.
        # Corresponds to the JSON property `seller`
        # @return [Google::Apis::AdexchangebuyerV1_4::Seller]
        attr_accessor :seller
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buyer = args[:buyer] if args.key?(:buyer)
          @seller = args[:seller] if args.key?(:seller)
        end
      end
      
      # 
      class MarketplaceLabel
        include Google::Apis::Core::Hashable
      
        # The accountId of the party that created the label.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # The creation time (in ms since epoch) for the label.
        # Corresponds to the JSON property `createTimeMs`
        # @return [String]
        attr_accessor :create_time_ms
      
        # Information about the party that created the label.
        # Corresponds to the JSON property `deprecatedMarketplaceDealParty`
        # @return [Google::Apis::AdexchangebuyerV1_4::MarketplaceDealParty]
        attr_accessor :deprecated_marketplace_deal_party
      
        # The label to use.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @create_time_ms = args[:create_time_ms] if args.key?(:create_time_ms)
          @deprecated_marketplace_deal_party = args[:deprecated_marketplace_deal_party] if args.key?(:deprecated_marketplace_deal_party)
          @label = args[:label] if args.key?(:label)
        end
      end
      
      # A proposal is associated with a bunch of notes which may optionally be
      # associated with a deal and/or revision number.
      class MarketplaceNote
        include Google::Apis::Core::Hashable
      
        # The role of the person (buyer/seller) creating the note. (readonly)
        # Corresponds to the JSON property `creatorRole`
        # @return [String]
        attr_accessor :creator_role
      
        # Notes can optionally be associated with a deal. (readonly, except on create)
        # Corresponds to the JSON property `dealId`
        # @return [String]
        attr_accessor :deal_id
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # adexchangebuyer#marketplaceNote".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The actual note to attach. (readonly, except on create)
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # The unique id for the note. (readonly)
        # Corresponds to the JSON property `noteId`
        # @return [String]
        attr_accessor :note_id
      
        # The proposalId that a note is attached to. (readonly)
        # Corresponds to the JSON property `proposalId`
        # @return [String]
        attr_accessor :proposal_id
      
        # If the note is associated with a proposal revision number, then store that
        # here. (readonly, except on create)
        # Corresponds to the JSON property `proposalRevisionNumber`
        # @return [String]
        attr_accessor :proposal_revision_number
      
        # The timestamp (ms since epoch) that this note was created. (readonly)
        # Corresponds to the JSON property `timestampMs`
        # @return [String]
        attr_accessor :timestamp_ms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creator_role = args[:creator_role] if args.key?(:creator_role)
          @deal_id = args[:deal_id] if args.key?(:deal_id)
          @kind = args[:kind] if args.key?(:kind)
          @note = args[:note] if args.key?(:note)
          @note_id = args[:note_id] if args.key?(:note_id)
          @proposal_id = args[:proposal_id] if args.key?(:proposal_id)
          @proposal_revision_number = args[:proposal_revision_number] if args.key?(:proposal_revision_number)
          @timestamp_ms = args[:timestamp_ms] if args.key?(:timestamp_ms)
        end
      end
      
      # The configuration data for an Ad Exchange performance report list.
      class PerformanceReport
        include Google::Apis::Core::Hashable
      
        # The number of bid responses with an ad.
        # Corresponds to the JSON property `bidRate`
        # @return [Float]
        attr_accessor :bid_rate
      
        # The number of bid requests sent to your bidder.
        # Corresponds to the JSON property `bidRequestRate`
        # @return [Float]
        attr_accessor :bid_request_rate
      
        # Rate of various prefiltering statuses per match. Please refer to the callout-
        # status-codes.txt file for different statuses.
        # Corresponds to the JSON property `calloutStatusRate`
        # @return [Array<Object>]
        attr_accessor :callout_status_rate
      
        # Average QPS for cookie matcher operations.
        # Corresponds to the JSON property `cookieMatcherStatusRate`
        # @return [Array<Object>]
        attr_accessor :cookie_matcher_status_rate
      
        # Rate of ads with a given status. Please refer to the creative-status-codes.txt
        # file for different statuses.
        # Corresponds to the JSON property `creativeStatusRate`
        # @return [Array<Object>]
        attr_accessor :creative_status_rate
      
        # The number of bid responses that were filtered due to a policy violation or
        # other errors.
        # Corresponds to the JSON property `filteredBidRate`
        # @return [Float]
        attr_accessor :filtered_bid_rate
      
        # Average QPS for hosted match operations.
        # Corresponds to the JSON property `hostedMatchStatusRate`
        # @return [Array<Object>]
        attr_accessor :hosted_match_status_rate
      
        # The number of potential queries based on your pretargeting settings.
        # Corresponds to the JSON property `inventoryMatchRate`
        # @return [Float]
        attr_accessor :inventory_match_rate
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The 50th percentile round trip latency(ms) as perceived from Google servers
        # for the duration period covered by the report.
        # Corresponds to the JSON property `latency50thPercentile`
        # @return [Float]
        attr_accessor :latency_50th_percentile
      
        # The 85th percentile round trip latency(ms) as perceived from Google servers
        # for the duration period covered by the report.
        # Corresponds to the JSON property `latency85thPercentile`
        # @return [Float]
        attr_accessor :latency_85th_percentile
      
        # The 95th percentile round trip latency(ms) as perceived from Google servers
        # for the duration period covered by the report.
        # Corresponds to the JSON property `latency95thPercentile`
        # @return [Float]
        attr_accessor :latency_95th_percentile
      
        # Rate of various quota account statuses per quota check.
        # Corresponds to the JSON property `noQuotaInRegion`
        # @return [Float]
        attr_accessor :no_quota_in_region
      
        # Rate of various quota account statuses per quota check.
        # Corresponds to the JSON property `outOfQuota`
        # @return [Float]
        attr_accessor :out_of_quota
      
        # Average QPS for pixel match requests from clients.
        # Corresponds to the JSON property `pixelMatchRequests`
        # @return [Float]
        attr_accessor :pixel_match_requests
      
        # Average QPS for pixel match responses from clients.
        # Corresponds to the JSON property `pixelMatchResponses`
        # @return [Float]
        attr_accessor :pixel_match_responses
      
        # The configured quota limits for this account.
        # Corresponds to the JSON property `quotaConfiguredLimit`
        # @return [Float]
        attr_accessor :quota_configured_limit
      
        # The throttled quota limits for this account.
        # Corresponds to the JSON property `quotaThrottledLimit`
        # @return [Float]
        attr_accessor :quota_throttled_limit
      
        # The trading location of this data.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The number of properly formed bid responses received by our servers within the
        # deadline.
        # Corresponds to the JSON property `successfulRequestRate`
        # @return [Float]
        attr_accessor :successful_request_rate
      
        # The unix timestamp of the starting time of this performance data.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The number of bid responses that were unsuccessful due to timeouts, incorrect
        # formatting, etc.
        # Corresponds to the JSON property `unsuccessfulRequestRate`
        # @return [Float]
        attr_accessor :unsuccessful_request_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bid_rate = args[:bid_rate] if args.key?(:bid_rate)
          @bid_request_rate = args[:bid_request_rate] if args.key?(:bid_request_rate)
          @callout_status_rate = args[:callout_status_rate] if args.key?(:callout_status_rate)
          @cookie_matcher_status_rate = args[:cookie_matcher_status_rate] if args.key?(:cookie_matcher_status_rate)
          @creative_status_rate = args[:creative_status_rate] if args.key?(:creative_status_rate)
          @filtered_bid_rate = args[:filtered_bid_rate] if args.key?(:filtered_bid_rate)
          @hosted_match_status_rate = args[:hosted_match_status_rate] if args.key?(:hosted_match_status_rate)
          @inventory_match_rate = args[:inventory_match_rate] if args.key?(:inventory_match_rate)
          @kind = args[:kind] if args.key?(:kind)
          @latency_50th_percentile = args[:latency_50th_percentile] if args.key?(:latency_50th_percentile)
          @latency_85th_percentile = args[:latency_85th_percentile] if args.key?(:latency_85th_percentile)
          @latency_95th_percentile = args[:latency_95th_percentile] if args.key?(:latency_95th_percentile)
          @no_quota_in_region = args[:no_quota_in_region] if args.key?(:no_quota_in_region)
          @out_of_quota = args[:out_of_quota] if args.key?(:out_of_quota)
          @pixel_match_requests = args[:pixel_match_requests] if args.key?(:pixel_match_requests)
          @pixel_match_responses = args[:pixel_match_responses] if args.key?(:pixel_match_responses)
          @quota_configured_limit = args[:quota_configured_limit] if args.key?(:quota_configured_limit)
          @quota_throttled_limit = args[:quota_throttled_limit] if args.key?(:quota_throttled_limit)
          @region = args[:region] if args.key?(:region)
          @successful_request_rate = args[:successful_request_rate] if args.key?(:successful_request_rate)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @unsuccessful_request_rate = args[:unsuccessful_request_rate] if args.key?(:unsuccessful_request_rate)
        end
      end
      
      # The configuration data for an Ad Exchange performance report list. https://
      # sites.google.com/a/google.com/adx-integration/Home/engineering/binary-releases/
      # rtb-api-release https://cs.corp.google.com/#piper///depot/google3/contentads/
      # adx/tools/rtb_api/adxrtb.py
      class PerformanceReportList
        include Google::Apis::Core::Hashable
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A list of performance reports relevant for the account.
        # Corresponds to the JSON property `performanceReport`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PerformanceReport>]
        attr_accessor :performance_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @performance_report = args[:performance_report] if args.key?(:performance_report)
        end
      end
      
      # 
      class PretargetingConfig
        include Google::Apis::Core::Hashable
      
        # The id for billing purposes, provided for reference. Leave this field blank
        # for insert requests; the id will be generated automatically.
        # Corresponds to the JSON property `billingId`
        # @return [String]
        attr_accessor :billing_id
      
        # The config id; generated automatically. Leave this field blank for insert
        # requests.
        # Corresponds to the JSON property `configId`
        # @return [String]
        attr_accessor :config_id
      
        # The name of the config. Must be unique. Required for all requests.
        # Corresponds to the JSON property `configName`
        # @return [String]
        attr_accessor :config_name
      
        # List must contain exactly one of PRETARGETING_CREATIVE_TYPE_HTML or
        # PRETARGETING_CREATIVE_TYPE_VIDEO.
        # Corresponds to the JSON property `creativeType`
        # @return [Array<String>]
        attr_accessor :creative_type
      
        # Requests which allow one of these (width, height) pairs will match. All pairs
        # must be supported ad dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PretargetingConfig::Dimension>]
        attr_accessor :dimensions
      
        # Requests with any of these content labels will not match. Values are from
        # content-labels.txt in the downloadable files section.
        # Corresponds to the JSON property `excludedContentLabels`
        # @return [Array<String>]
        attr_accessor :excluded_content_labels
      
        # Requests containing any of these geo criteria ids will not match.
        # Corresponds to the JSON property `excludedGeoCriteriaIds`
        # @return [Array<String>]
        attr_accessor :excluded_geo_criteria_ids
      
        # Requests containing any of these placements will not match.
        # Corresponds to the JSON property `excludedPlacements`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PretargetingConfig::ExcludedPlacement>]
        attr_accessor :excluded_placements
      
        # Requests containing any of these users list ids will not match.
        # Corresponds to the JSON property `excludedUserLists`
        # @return [Array<String>]
        attr_accessor :excluded_user_lists
      
        # Requests containing any of these vertical ids will not match. Values are from
        # the publisher-verticals.txt file in the downloadable files section.
        # Corresponds to the JSON property `excludedVerticals`
        # @return [Array<String>]
        attr_accessor :excluded_verticals
      
        # Requests containing any of these geo criteria ids will match.
        # Corresponds to the JSON property `geoCriteriaIds`
        # @return [Array<String>]
        attr_accessor :geo_criteria_ids
      
        # Whether this config is active. Required for all requests.
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # The kind of the resource, i.e. "adexchangebuyer#pretargetingConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Request containing any of these language codes will match.
        # Corresponds to the JSON property `languages`
        # @return [Array<String>]
        attr_accessor :languages
      
        # Requests containing any of these mobile carrier ids will match. Values are
        # from mobile-carriers.csv in the downloadable files section.
        # Corresponds to the JSON property `mobileCarriers`
        # @return [Array<String>]
        attr_accessor :mobile_carriers
      
        # Requests containing any of these mobile device ids will match. Values are from
        # mobile-devices.csv in the downloadable files section.
        # Corresponds to the JSON property `mobileDevices`
        # @return [Array<String>]
        attr_accessor :mobile_devices
      
        # Requests containing any of these mobile operating system version ids will
        # match. Values are from mobile-os.csv in the downloadable files section.
        # Corresponds to the JSON property `mobileOperatingSystemVersions`
        # @return [Array<String>]
        attr_accessor :mobile_operating_system_versions
      
        # Requests containing any of these placements will match.
        # Corresponds to the JSON property `placements`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PretargetingConfig::Placement>]
        attr_accessor :placements
      
        # Requests matching any of these platforms will match. Possible values are
        # PRETARGETING_PLATFORM_MOBILE, PRETARGETING_PLATFORM_DESKTOP, and
        # PRETARGETING_PLATFORM_TABLET.
        # Corresponds to the JSON property `platforms`
        # @return [Array<String>]
        attr_accessor :platforms
      
        # Creative attributes should be declared here if all creatives corresponding to
        # this pretargeting configuration have that creative attribute. Values are from
        # pretargetable-creative-attributes.txt in the downloadable files section.
        # Corresponds to the JSON property `supportedCreativeAttributes`
        # @return [Array<String>]
        attr_accessor :supported_creative_attributes
      
        # Requests containing any of these user list ids will match.
        # Corresponds to the JSON property `userLists`
        # @return [Array<String>]
        attr_accessor :user_lists
      
        # Requests that allow any of these vendor ids will match. Values are from
        # vendors.txt in the downloadable files section.
        # Corresponds to the JSON property `vendorTypes`
        # @return [Array<String>]
        attr_accessor :vendor_types
      
        # Requests containing any of these vertical ids will match.
        # Corresponds to the JSON property `verticals`
        # @return [Array<String>]
        attr_accessor :verticals
      
        # Video requests satisfying any of these player size constraints will match.
        # Corresponds to the JSON property `videoPlayerSizes`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PretargetingConfig::VideoPlayerSize>]
        attr_accessor :video_player_sizes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_id = args[:billing_id] if args.key?(:billing_id)
          @config_id = args[:config_id] if args.key?(:config_id)
          @config_name = args[:config_name] if args.key?(:config_name)
          @creative_type = args[:creative_type] if args.key?(:creative_type)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @excluded_content_labels = args[:excluded_content_labels] if args.key?(:excluded_content_labels)
          @excluded_geo_criteria_ids = args[:excluded_geo_criteria_ids] if args.key?(:excluded_geo_criteria_ids)
          @excluded_placements = args[:excluded_placements] if args.key?(:excluded_placements)
          @excluded_user_lists = args[:excluded_user_lists] if args.key?(:excluded_user_lists)
          @excluded_verticals = args[:excluded_verticals] if args.key?(:excluded_verticals)
          @geo_criteria_ids = args[:geo_criteria_ids] if args.key?(:geo_criteria_ids)
          @is_active = args[:is_active] if args.key?(:is_active)
          @kind = args[:kind] if args.key?(:kind)
          @languages = args[:languages] if args.key?(:languages)
          @mobile_carriers = args[:mobile_carriers] if args.key?(:mobile_carriers)
          @mobile_devices = args[:mobile_devices] if args.key?(:mobile_devices)
          @mobile_operating_system_versions = args[:mobile_operating_system_versions] if args.key?(:mobile_operating_system_versions)
          @placements = args[:placements] if args.key?(:placements)
          @platforms = args[:platforms] if args.key?(:platforms)
          @supported_creative_attributes = args[:supported_creative_attributes] if args.key?(:supported_creative_attributes)
          @user_lists = args[:user_lists] if args.key?(:user_lists)
          @vendor_types = args[:vendor_types] if args.key?(:vendor_types)
          @verticals = args[:verticals] if args.key?(:verticals)
          @video_player_sizes = args[:video_player_sizes] if args.key?(:video_player_sizes)
        end
        
        # 
        class Dimension
          include Google::Apis::Core::Hashable
        
          # Height in pixels.
          # Corresponds to the JSON property `height`
          # @return [String]
          attr_accessor :height
        
          # Width in pixels.
          # Corresponds to the JSON property `width`
          # @return [String]
          attr_accessor :width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @height = args[:height] if args.key?(:height)
            @width = args[:width] if args.key?(:width)
          end
        end
        
        # 
        class ExcludedPlacement
          include Google::Apis::Core::Hashable
        
          # The value of the placement. Interpretation depends on the placement type, e.g.
          # URL for a site placement, channel name for a channel placement, app id for a
          # mobile app placement.
          # Corresponds to the JSON property `token`
          # @return [String]
          attr_accessor :token
        
          # The type of the placement.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @token = args[:token] if args.key?(:token)
            @type = args[:type] if args.key?(:type)
          end
        end
        
        # 
        class Placement
          include Google::Apis::Core::Hashable
        
          # The value of the placement. Interpretation depends on the placement type, e.g.
          # URL for a site placement, channel name for a channel placement, app id for a
          # mobile app placement.
          # Corresponds to the JSON property `token`
          # @return [String]
          attr_accessor :token
        
          # The type of the placement.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @token = args[:token] if args.key?(:token)
            @type = args[:type] if args.key?(:type)
          end
        end
        
        # 
        class VideoPlayerSize
          include Google::Apis::Core::Hashable
        
          # The type of aspect ratio. Leave this field blank to match all aspect ratios.
          # Corresponds to the JSON property `aspectRatio`
          # @return [String]
          attr_accessor :aspect_ratio
        
          # The minimum player height in pixels. Leave this field blank to match any
          # player height.
          # Corresponds to the JSON property `minHeight`
          # @return [String]
          attr_accessor :min_height
        
          # The minimum player width in pixels. Leave this field blank to match any player
          # width.
          # Corresponds to the JSON property `minWidth`
          # @return [String]
          attr_accessor :min_width
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
            @min_height = args[:min_height] if args.key?(:min_height)
            @min_width = args[:min_width] if args.key?(:min_width)
          end
        end
      end
      
      # 
      class PretargetingConfigList
        include Google::Apis::Core::Hashable
      
        # A list of pretargeting configs
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::PretargetingConfig>]
        attr_accessor :items
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class Price
        include Google::Apis::Core::Hashable
      
        # The price value in micros.
        # Corresponds to the JSON property `amountMicros`
        # @return [Float]
        attr_accessor :amount_micros
      
        # The currency code for the price.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The pricing type for the deal/product.
        # Corresponds to the JSON property `pricingType`
        # @return [String]
        attr_accessor :pricing_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount_micros = args[:amount_micros] if args.key?(:amount_micros)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @pricing_type = args[:pricing_type] if args.key?(:pricing_type)
        end
      end
      
      # Used to specify pricing rules for buyers/advertisers. Each PricePerBuyer in an
      # product can become [0,1] deals. To check if there is a PricePerBuyer for a
      # particular buyer or buyer/advertiser pair, we look for the most specific
      # matching rule - we first look for a rule matching the buyer and advertiser,
      # next a rule with the buyer but an empty advertiser list, and otherwise look
      # for a matching rule where no buyer is set.
      class PricePerBuyer
        include Google::Apis::Core::Hashable
      
        # The buyer who will pay this price. If unset, all buyers can pay this price (if
        # the advertisers match, and there's no more specific rule matching the buyer).
        # Corresponds to the JSON property `buyer`
        # @return [Google::Apis::AdexchangebuyerV1_4::Buyer]
        attr_accessor :buyer
      
        # The specified price
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::AdexchangebuyerV1_4::Price]
        attr_accessor :price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buyer = args[:buyer] if args.key?(:buyer)
          @price = args[:price] if args.key?(:price)
        end
      end
      
      # 
      class PrivateData
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `referenceId`
        # @return [String]
        attr_accessor :reference_id
      
        # 
        # Corresponds to the JSON property `referencePayload`
        # @return [String]
        attr_accessor :reference_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reference_id = args[:reference_id] if args.key?(:reference_id)
          @reference_payload = args[:reference_payload] if args.key?(:reference_payload)
        end
      end
      
      # A product is segment of inventory that a seller wishes to sell. It is
      # associated with certain terms and targeting information which helps buyer know
      # more about the inventory. Each field in a product can have one of the
      # following setting:
      # (readonly) - It is an error to try and set this field. (buyer-readonly) - Only
      # the seller can set this field. (seller-readonly) - Only the buyer can set this
      # field. (updatable) - The field is updatable at all times by either buyer or
      # the seller.
      class Product
        include Google::Apis::Core::Hashable
      
        # Creation time in ms. since epoch (readonly)
        # Corresponds to the JSON property `creationTimeMs`
        # @return [String]
        attr_accessor :creation_time_ms
      
        # Optional contact information for the creator of this product. (buyer-readonly)
        # Corresponds to the JSON property `creatorContacts`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::ContactInformation>]
        attr_accessor :creator_contacts
      
        # The proposed end time for the deal (ms since epoch) (buyer-readonly)
        # Corresponds to the JSON property `flightEndTimeMs`
        # @return [String]
        attr_accessor :flight_end_time_ms
      
        # Inventory availability dates. (times are in ms since epoch) The granularity is
        # generally in the order of seconds. (buyer-readonly)
        # Corresponds to the JSON property `flightStartTimeMs`
        # @return [String]
        attr_accessor :flight_start_time_ms
      
        # If the creator has already signed off on the product, then the buyer can
        # finalize the deal by accepting the product as is. When copying to a proposal,
        # if any of the terms are changed, then auto_finalize is automatically set to
        # false.
        # Corresponds to the JSON property `hasCreatorSignedOff`
        # @return [Boolean]
        attr_accessor :has_creator_signed_off
        alias_method :has_creator_signed_off?, :has_creator_signed_off
      
        # What exchange will provide this inventory (readonly, except on create).
        # Corresponds to the JSON property `inventorySource`
        # @return [String]
        attr_accessor :inventory_source
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # adexchangebuyer#product".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Optional List of labels for the product (optional, buyer-readonly).
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceLabel>]
        attr_accessor :labels
      
        # Time of last update in ms. since epoch (readonly)
        # Corresponds to the JSON property `lastUpdateTimeMs`
        # @return [String]
        attr_accessor :last_update_time_ms
      
        # The name for this product as set by the seller. (buyer-readonly)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique id for the product (readonly)
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The revision number of the product. (readonly)
        # Corresponds to the JSON property `revisionNumber`
        # @return [String]
        attr_accessor :revision_number
      
        # Information about the seller that created this product (readonly, except on
        # create)
        # Corresponds to the JSON property `seller`
        # @return [Google::Apis::AdexchangebuyerV1_4::Seller]
        attr_accessor :seller
      
        # Targeting that is shared between the buyer and the seller. Each targeting
        # criteria has a specified key and for each key there is a list of inclusion
        # value or exclusion values. (buyer-readonly)
        # Corresponds to the JSON property `sharedTargetings`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::SharedTargeting>]
        attr_accessor :shared_targetings
      
        # The state of the product. (buyer-readonly)
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The syndication product associated with the deal. (readonly, except on create)
        # Corresponds to the JSON property `syndicationProduct`
        # @return [String]
        attr_accessor :syndication_product
      
        # The negotiable terms of the deal (buyer-readonly)
        # Corresponds to the JSON property `terms`
        # @return [Google::Apis::AdexchangebuyerV1_4::DealTerms]
        attr_accessor :terms
      
        # 
        # Corresponds to the JSON property `webPropertyCode`
        # @return [String]
        attr_accessor :web_property_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time_ms = args[:creation_time_ms] if args.key?(:creation_time_ms)
          @creator_contacts = args[:creator_contacts] if args.key?(:creator_contacts)
          @flight_end_time_ms = args[:flight_end_time_ms] if args.key?(:flight_end_time_ms)
          @flight_start_time_ms = args[:flight_start_time_ms] if args.key?(:flight_start_time_ms)
          @has_creator_signed_off = args[:has_creator_signed_off] if args.key?(:has_creator_signed_off)
          @inventory_source = args[:inventory_source] if args.key?(:inventory_source)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @last_update_time_ms = args[:last_update_time_ms] if args.key?(:last_update_time_ms)
          @name = args[:name] if args.key?(:name)
          @product_id = args[:product_id] if args.key?(:product_id)
          @revision_number = args[:revision_number] if args.key?(:revision_number)
          @seller = args[:seller] if args.key?(:seller)
          @shared_targetings = args[:shared_targetings] if args.key?(:shared_targetings)
          @state = args[:state] if args.key?(:state)
          @syndication_product = args[:syndication_product] if args.key?(:syndication_product)
          @terms = args[:terms] if args.key?(:terms)
          @web_property_code = args[:web_property_code] if args.key?(:web_property_code)
        end
      end
      
      # Represents a proposal in the marketplace. A proposal is the unit of
      # negotiation between a seller and a buyer and contains deals which are served.
      # Each field in a proposal can have one of the following setting:
      # (readonly) - It is an error to try and set this field. (buyer-readonly) - Only
      # the seller can set this field. (seller-readonly) - Only the buyer can set this
      # field. (updatable) - The field is updatable at all times by either buyer or
      # the seller.
      class Proposal
        include Google::Apis::Core::Hashable
      
        # Reference to the buyer that will get billed for this proposal. (readonly)
        # Corresponds to the JSON property `billedBuyer`
        # @return [Google::Apis::AdexchangebuyerV1_4::Buyer]
        attr_accessor :billed_buyer
      
        # Reference to the buyer on the proposal. (readonly, except on create)
        # Corresponds to the JSON property `buyer`
        # @return [Google::Apis::AdexchangebuyerV1_4::Buyer]
        attr_accessor :buyer
      
        # Optional contact information fort the buyer. (seller-readonly)
        # Corresponds to the JSON property `buyerContacts`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::ContactInformation>]
        attr_accessor :buyer_contacts
      
        # Private data for buyer. (hidden from seller).
        # Corresponds to the JSON property `buyerPrivateData`
        # @return [Google::Apis::AdexchangebuyerV1_4::PrivateData]
        attr_accessor :buyer_private_data
      
        # When an proposal is in an accepted state, indicates whether the buyer has
        # signed off Once both sides have signed off on a deal, the proposal can be
        # finalized by the seller. (seller-readonly)
        # Corresponds to the JSON property `hasBuyerSignedOff`
        # @return [Boolean]
        attr_accessor :has_buyer_signed_off
        alias_method :has_buyer_signed_off?, :has_buyer_signed_off
      
        # When an proposal is in an accepted state, indicates whether the buyer has
        # signed off Once both sides have signed off on a deal, the proposal can be
        # finalized by the seller. (buyer-readonly)
        # Corresponds to the JSON property `hasSellerSignedOff`
        # @return [Boolean]
        attr_accessor :has_seller_signed_off
        alias_method :has_seller_signed_off?, :has_seller_signed_off
      
        # What exchange will provide this inventory (readonly, except on create).
        # Corresponds to the JSON property `inventorySource`
        # @return [String]
        attr_accessor :inventory_source
      
        # True if the proposal is being renegotiated (readonly).
        # Corresponds to the JSON property `isRenegotiating`
        # @return [Boolean]
        attr_accessor :is_renegotiating
        alias_method :is_renegotiating?, :is_renegotiating
      
        # True, if the buyside inventory setup is complete for this proposal. (readonly)
        # Corresponds to the JSON property `isSetupComplete`
        # @return [Boolean]
        attr_accessor :is_setup_complete
        alias_method :is_setup_complete?, :is_setup_complete
      
        # Identifies what kind of resource this is. Value: the fixed string "
        # adexchangebuyer#proposal".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of labels associated with the proposal. (readonly)
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::MarketplaceLabel>]
        attr_accessor :labels
      
        # The role of the last user that either updated the proposal or left a comment. (
        # readonly)
        # Corresponds to the JSON property `lastUpdaterOrCommentorRole`
        # @return [String]
        attr_accessor :last_updater_or_commentor_role
      
        # 
        # Corresponds to the JSON property `lastUpdaterRole`
        # @return [String]
        attr_accessor :last_updater_role
      
        # The name for the proposal (updatable)
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates whether the buyer/seller created the proposal.(readonly)
        # Corresponds to the JSON property `originatorRole`
        # @return [String]
        attr_accessor :originator_role
      
        # The unique id of the proposal. (readonly).
        # Corresponds to the JSON property `proposalId`
        # @return [String]
        attr_accessor :proposal_id
      
        # The current state of the proposal. (readonly)
        # Corresponds to the JSON property `proposalState`
        # @return [String]
        attr_accessor :proposal_state
      
        # The revision number for the proposal (readonly).
        # Corresponds to the JSON property `revisionNumber`
        # @return [String]
        attr_accessor :revision_number
      
        # The time (ms since epoch) when the proposal was last revised (readonly).
        # Corresponds to the JSON property `revisionTimeMs`
        # @return [String]
        attr_accessor :revision_time_ms
      
        # Reference to the seller on the proposal. (readonly, except on create)
        # Corresponds to the JSON property `seller`
        # @return [Google::Apis::AdexchangebuyerV1_4::Seller]
        attr_accessor :seller
      
        # Optional contact information for the seller (buyer-readonly).
        # Corresponds to the JSON property `sellerContacts`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::ContactInformation>]
        attr_accessor :seller_contacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billed_buyer = args[:billed_buyer] if args.key?(:billed_buyer)
          @buyer = args[:buyer] if args.key?(:buyer)
          @buyer_contacts = args[:buyer_contacts] if args.key?(:buyer_contacts)
          @buyer_private_data = args[:buyer_private_data] if args.key?(:buyer_private_data)
          @has_buyer_signed_off = args[:has_buyer_signed_off] if args.key?(:has_buyer_signed_off)
          @has_seller_signed_off = args[:has_seller_signed_off] if args.key?(:has_seller_signed_off)
          @inventory_source = args[:inventory_source] if args.key?(:inventory_source)
          @is_renegotiating = args[:is_renegotiating] if args.key?(:is_renegotiating)
          @is_setup_complete = args[:is_setup_complete] if args.key?(:is_setup_complete)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @last_updater_or_commentor_role = args[:last_updater_or_commentor_role] if args.key?(:last_updater_or_commentor_role)
          @last_updater_role = args[:last_updater_role] if args.key?(:last_updater_role)
          @name = args[:name] if args.key?(:name)
          @originator_role = args[:originator_role] if args.key?(:originator_role)
          @proposal_id = args[:proposal_id] if args.key?(:proposal_id)
          @proposal_state = args[:proposal_state] if args.key?(:proposal_state)
          @revision_number = args[:revision_number] if args.key?(:revision_number)
          @revision_time_ms = args[:revision_time_ms] if args.key?(:revision_time_ms)
          @seller = args[:seller] if args.key?(:seller)
          @seller_contacts = args[:seller_contacts] if args.key?(:seller_contacts)
        end
      end
      
      # 
      class Seller
        include Google::Apis::Core::Hashable
      
        # The unique id for the seller. The seller fills in this field. The seller
        # account id is then available to buyer in the product.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Optional sub-account id for the seller.
        # Corresponds to the JSON property `subAccountId`
        # @return [String]
        attr_accessor :sub_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @sub_account_id = args[:sub_account_id] if args.key?(:sub_account_id)
        end
      end
      
      # 
      class SharedTargeting
        include Google::Apis::Core::Hashable
      
        # The list of values to exclude from targeting.
        # Corresponds to the JSON property `exclusions`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::TargetingValue>]
        attr_accessor :exclusions
      
        # The list of value to include as part of the targeting.
        # Corresponds to the JSON property `inclusions`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::TargetingValue>]
        attr_accessor :inclusions
      
        # The key representing the shared targeting criterion.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusions = args[:exclusions] if args.key?(:exclusions)
          @inclusions = args[:inclusions] if args.key?(:inclusions)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # 
      class TargetingValue
        include Google::Apis::Core::Hashable
      
        # The creative size value to exclude/include.
        # Corresponds to the JSON property `creativeSizeValue`
        # @return [Google::Apis::AdexchangebuyerV1_4::TargetingValueCreativeSize]
        attr_accessor :creative_size_value
      
        # The daypart targeting to include / exclude. Filled in when the key is
        # GOOG_DAYPART_TARGETING.
        # Corresponds to the JSON property `dayPartTargetingValue`
        # @return [Google::Apis::AdexchangebuyerV1_4::TargetingValueDayPartTargeting]
        attr_accessor :day_part_targeting_value
      
        # The long value to exclude/include.
        # Corresponds to the JSON property `longValue`
        # @return [String]
        attr_accessor :long_value
      
        # The string value to exclude/include.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creative_size_value = args[:creative_size_value] if args.key?(:creative_size_value)
          @day_part_targeting_value = args[:day_part_targeting_value] if args.key?(:day_part_targeting_value)
          @long_value = args[:long_value] if args.key?(:long_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # 
      class TargetingValueCreativeSize
        include Google::Apis::Core::Hashable
      
        # For video size type, the list of companion sizes.
        # Corresponds to the JSON property `companionSizes`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::TargetingValueSize>]
        attr_accessor :companion_sizes
      
        # The Creative size type.
        # Corresponds to the JSON property `creativeSizeType`
        # @return [String]
        attr_accessor :creative_size_type
      
        # For regular or video creative size type, specifies the size of the creative.
        # Corresponds to the JSON property `size`
        # @return [Google::Apis::AdexchangebuyerV1_4::TargetingValueSize]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @companion_sizes = args[:companion_sizes] if args.key?(:companion_sizes)
          @creative_size_type = args[:creative_size_type] if args.key?(:creative_size_type)
          @size = args[:size] if args.key?(:size)
        end
      end
      
      # 
      class TargetingValueDayPartTargeting
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dayParts`
        # @return [Array<Google::Apis::AdexchangebuyerV1_4::TargetingValueDayPartTargetingDayPart>]
        attr_accessor :day_parts
      
        # 
        # Corresponds to the JSON property `timeZoneType`
        # @return [String]
        attr_accessor :time_zone_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_parts = args[:day_parts] if args.key?(:day_parts)
          @time_zone_type = args[:time_zone_type] if args.key?(:time_zone_type)
        end
      end
      
      # 
      class TargetingValueDayPartTargetingDayPart
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # 
        # Corresponds to the JSON property `endHour`
        # @return [Fixnum]
        attr_accessor :end_hour
      
        # 
        # Corresponds to the JSON property `endMinute`
        # @return [Fixnum]
        attr_accessor :end_minute
      
        # 
        # Corresponds to the JSON property `startHour`
        # @return [Fixnum]
        attr_accessor :start_hour
      
        # 
        # Corresponds to the JSON property `startMinute`
        # @return [Fixnum]
        attr_accessor :start_minute
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @end_hour = args[:end_hour] if args.key?(:end_hour)
          @end_minute = args[:end_minute] if args.key?(:end_minute)
          @start_hour = args[:start_hour] if args.key?(:start_hour)
          @start_minute = args[:start_minute] if args.key?(:start_minute)
        end
      end
      
      # 
      class TargetingValueSize
        include Google::Apis::Core::Hashable
      
        # The height of the creative.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The width of the creative.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @width = args[:width] if args.key?(:width)
        end
      end
    end
  end
end
