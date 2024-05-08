# frozen_string_literal: true

require_relative './constants/delimiters'
require_relative './errors/invalid_input_error'
require_relative './errors/negative_number_error'

class StringCalculator
  include Constants::Delimiters

  attr_reader :str

  def initialize(str)
    @str = str.to_s
  end

  def add
    return 0 if str.empty?

    check_negatives!

    calculate_sum
  end

  private

  def check_negatives!
    return unless negative_digits.any?

    raise Errors::NegativeNumberError, "Negative numbers are not allowed: #{negative_digits.join(', ')}"
  end

  def negative_digits
    @negative_digits ||= digits.select(&:negative?)
  end

  def digits
    @digits ||= find_digits!
  end

  def find_digits!
    modified_str = str.split(delimiter, -1).map(&:strip).join(delimiter)
    @digits = modified_str.gsub("\n", delimiter).split(delimiter, -1)

    raise Errors::InvalidInputError, 'Invalid input error' if @digits.include?('')

    @digits.map!(&:to_i)
  end

  def delimiter
    @delimiter ||= str.start_with?(CUSTOM_DELIMITER) ? str[2] : DEFAULT_DELIMITER
  end

  def calculate_sum
    digits.sum
  end
end
