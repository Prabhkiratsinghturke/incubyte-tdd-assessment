# frozen_string_literal: true

require 'spec_helper'

RSpec.describe StringCalculator::Errors::NegativeNumberError do
  it 'raises with default message' do
    expect do
      raise StringCalculator::Errors::NegativeNumberError
    end.to raise_error(StringCalculator::Errors::NegativeNumberError,
                       'Negative numbers are not allowed')
  end

  it 'raises with custom message' do
    expect do
      raise StringCalculator::Errors::NegativeNumberError,
            'Custom error'
    end.to raise_error(StringCalculator::Errors::NegativeNumberError, 'Custom error')
  end
end
