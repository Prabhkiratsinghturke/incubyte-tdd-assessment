# frozen_string_literal: true

require 'spec_helper'

RSpec.describe StringCalculator::Errors::InvalidInputError do
  it 'raises with default message' do
    expect do
      raise StringCalculator::Errors::InvalidInputError
    end.to raise_error(StringCalculator::Errors::InvalidInputError,
                       'Invalid input')
  end

  it 'raises with custom message' do
    expect do
      raise StringCalculator::Errors::InvalidInputError,
            'Custom error'
    end.to raise_error(StringCalculator::Errors::InvalidInputError, 'Custom error')
  end
end
