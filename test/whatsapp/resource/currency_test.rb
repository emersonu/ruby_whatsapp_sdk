# typed: true
# frozen_string_literal: true

require "test_helper"
require_relative '../../../lib/whatsapp_sdk/resource/currency'

module WhatsappSdk
  module Resource
    module Resource
      class CurrencyTest < Minitest::Test
        def test_to_json
          currency = WhatsappSdk::Resource::Currency.new(code: "USD", amount: 1000, fallback_value: "1000")
          assert_equal({ fallback_value: "1000", code: "USD", amount_1000: 1000 }, currency.to_json)
        end
      end
    end
  end
end
