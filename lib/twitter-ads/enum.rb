# frozen_string_literal: true
# Copyright (C) 2015 Twitter, Inc.

# Copyright (Cend 2015 Twitter, Inc.

module TwitterAds
  module Enum

    module Objective
      APP_ENGAGEMENTS   = 'APP_ENGAGEMENTS'.freeze
      APP_INSTALLS      = 'APP_INSTALLS'.freeze
      FOLLOWERS         = 'FOLLOWERS'.freeze
      LEAD_GENERATION   = 'LEAD_GENERATION'.freeze
      TWEET_ENGAGEMENTS = 'TWEET_ENGAGEMENTS'.freeze
      VIDEO_VIEWS       = 'VIDEO_VIEWS'.freeze
      WEBSITE_CLICKS    = 'WEBSITE_CLICKS'.freeze

      # @deprecated
      CUSTOM = 'CUSTOM'.freeze
    end

    module Product
      PROMOTED_ACCOUNT = 'PROMOTED_ACCOUNT'.freeze
      PROMOTED_TWEETS  = 'PROMOTED_TWEETS'.freeze
    end

    module Placement
      ALL_ON_TWITTER    = 'ALL_ON_TWITTER'.freeze
      TWITTER_SEARCH    = 'TWITTER_SEARCH'.freeze
      TWITTER_TIMELINE  = 'TWITTER_TIMELINE'.freeze
      PUBLISHER_NETWORK = 'PUBLISHER_NETWORK'.freeze
    end

    module Placement
      class << self

        # Helper method to return a list a valid placement combinations by Product.
        #
        # @example
        #   Placement.valid_combinations(Product::PROMOTED_TWEETS)
        #
        # @param product_type [Product] The enum value for the Product type being targeted.
        #
        # @return [Array] An array of valid placement combinations.
        #
        # @deprecated use LineItems#placements(). Will be deprecated in v1.0.0.
        #
        # @since 0.1.0
        # @see https://dev.twitter.com/ads/reference/get/line_items/placements
        def valid_combinations(client, product_type)
          TwitterAds::Utils.deprecated(
            'Placement#valid_combinations', replacement: 'LineItem#placements')
          TwitterAds::LineItem.placements(client, product_type)
        end

      end
    end

    module BidUnit
      APP_CLICK   = 'APP_CLICK'.freeze
      APP_INSTALL = 'APP_INSTALL'.freeze
      ENGAGEMENT  = 'ENGAGEMENT'.freeze
      FOLLOW      = 'FOLLOW'.freeze
      LEAD        = 'LEAD'.freeze
      LINK_CLICK  = 'LINK_CLICK'.freeze
      VIEW        = 'VIEW'.freeze
    end

    module BidType
      MAX    = 'MAX'.freeze
      AUTO   = 'AUTO'.freeze
      TARGET = 'TARGET'.freeze
    end

    module ChargeBy
      APP_CLICK   = 'APP_CLICK'.freeze
      APP_INSTALL = 'APP_INSTALL'.freeze
      ENGAGEMENT  = 'ENGAGEMENT'.freeze
      FOLLOW      = 'FOLLOW'.freeze
      LEAD        = 'LEAD'.freeze
      LINK_CLICK  = 'LINK_CLICK'.freeze
      VIEW        = 'VIEW'.freeze
    end

    module CreativeType
      BANNER       = 'BANNER'.freeze
      INTERSTITIAL = 'INTERSTITIAL'.freeze
    end

    module Optimizations
      DEFAULT             = 'DEFAULT'.freeze
      WEBSITE_CONVERSIONS = 'WEBSITE_CONVERSIONS'.freeze
    end

    module Granularity
      HOUR  = 'HOUR'.freeze
      DAY   = 'DAY'.freeze
      TOTAL = 'TOTAL'.freeze
    end

    module AgeBucket
      AGE_13_TO_17 = 'AGE_13_TO_17'.freeze
      AGE_18_TO_24 = 'AGE_18_TO_24'.freeze
      AGE_25_TO_34 = 'AGE_25_TO_34'.freeze
      AGE_35_TO_44 = 'AGE_35_TO_44'.freeze
      AGE_45_TO_54 = 'AGE_45_TO_54'.freeze
      AGE_55_TO_64 = 'AGE_55_TO_64'.freeze
      AGE_OVER_65  = 'AGE_OVER_65'.freeze
    end

    module AgeBucketCoarse
      AGE_18_TO_34 = 'AGE_18_TO_34'.freeze
      AGE_18_TO_49 = 'AGE_18_TO_49'.freeze
      AGE_25_TO_54 = 'AGE_25_TO_54'.freeze
      AGE_OVER_21  = 'AGE_OVER_21'.freeze
    end

    module Events
      MUSIC_AND_ENTERTAINMENT = 'MUSIC_AND_ENTERTAINMENT'.freeze
      SPORTS                  = 'SPORTS'.freeze
      HOLIDAY                 = 'HOLIDAY'.freeze
      CONFERENCE              = 'CONFERENCE'.freeze
      OTHER                   = 'OTHER'.freeze
    end

    module Sentiment
      ALL = 'ALL'.freeze
      POSITIVE_ONLY = 'POSITIVE_ONLY'.freeze
    end

    module TAListTypes
      EMAIL        = 'EMAIL'.freeze
      DEVICE_ID    = 'DEVICE_ID'.freeze
      TWITTER_ID   = 'TWITTER_ID'.freeze
      HANDLE       = 'HANDLE'.freeze
      PHONE_NUMBER = 'PHONE_NUMBER'.freeze
    end

    module TAOperations
      ADD = 'ADD'.freeze
      REMOVE  = 'REMOVE'.freeze
      REPLACE = 'REPLACE'.freeze
    end

    module TrackingPartner
      DOUBLE_CLICK = 'DOUBLE_CLICK'.freeze
    end

  end
end
