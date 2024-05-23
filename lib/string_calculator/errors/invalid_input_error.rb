# frozen_string_literal: true

module StringCalculator
  module Errors
    class InvalidInputError < StandardError
      def initialize(message = 'Invalid input')
        super(message)
      end
    end
  end
end
