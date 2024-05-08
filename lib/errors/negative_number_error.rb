module Errors
  class NegativeNumberError < StandardError
    attr_reader :message

    def initialize(message = 'Negative numbers are not allowed')
      @message = message
      super
    end
  end
end
