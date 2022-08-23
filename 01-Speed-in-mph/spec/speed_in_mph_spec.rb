# frozen_string_literal: true

# TO DO: Write the specs that ensures our speed_in_mph method
# successfully converts speed from km/h to mi/h.

require 'speed_in_mph'

describe '#speed_in_mph' do
  it 'returns an error if the parameter is not an Number' do
    error = 'Please pass a valid speed.'
    expect(speed_in_mph('123')).to eq(error)
    expect(speed_in_mph(true)).to eq(error)
  end

  it 'returns the new value in miles per hour' do
    expect(speed_in_mph(120.3)).to eq(74.75)
    expect(speed_in_mph(10)).to eq(6.21)
  end
end
