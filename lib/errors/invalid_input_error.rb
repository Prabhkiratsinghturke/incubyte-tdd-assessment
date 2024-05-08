module Errors
  class InvalidInputError < StandardError
    attr_reader :message

    def initialize(message = 'Invalid input')
      @message = message
      super
    end
  end
end
