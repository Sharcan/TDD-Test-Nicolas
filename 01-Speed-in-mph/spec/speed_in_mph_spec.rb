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
    mph = 0.6213711922
    expect(speed_in_mph(120.3)).to eq((120.3 * mph).round(2))
    expect(speed_in_mph(10)).to eq((10 * mph).round(2))
  end
end
