# frozen_string_literal: true

module StringCalculator
  module Errors
    class NegativeNumberError < StandardError
      def initialize(message = 'Negative numbers are not allowed')
        super(message)
      end
    end
  end
end
