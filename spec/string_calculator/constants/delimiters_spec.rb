# frozen_string_literal: true

require 'spec_helper'

RSpec.describe StringCalculator::Constants::Delimiters do
  it 'has a default delimiter' do
    expect(StringCalculator::Constants::Delimiters::DEFAULT_DELIMITER).to eq(',')
  end

  it 'has a custom delimiter' do
    expect(StringCalculator::Constants::Delimiters::CUSTOM_DELIMITER).to eq('//')
  end
end
