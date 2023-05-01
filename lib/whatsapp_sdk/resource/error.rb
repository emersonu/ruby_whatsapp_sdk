# typed: strict
# frozen_string_literal: true

module WhatsappSdk
  module Resource
    module Error
      class MissingArgumentError < StandardError
        extend T::Sig

        sig { returns(String) }
        attr_reader :message

        sig { params(message: String).void }
        def initialize(message)
          @message = message
          super(message)
        end
      end

      class MissingValue < WhatsappSdk::Error
        extend T::Sig

        sig { returns(String) }
        attr_reader :field

        sig { returns(String) }
        attr_reader :message

        sig { params(field: String, message: String).void }
        def initialize(field, message)
          @field = field
          @message = message
          super(message)
        end
      end

      class InvalidField < MissingValue; end

      class InvalidInteractiveBody < WhatsappSdk::Error; end

      class InvalidInteractiveActionReplyButton < WhatsappSdk::Error; end

      class InvalidInteractiveActionButton < WhatsappSdk::Error; end

      class InvalidInteractiveActionSection < WhatsappSdk::Error; end

      class InvalidInteractiveActionSectionRow < WhatsappSdk::Error; end

      class InvalidInteractiveFooter < WhatsappSdk::Error; end
    end
  end
end
