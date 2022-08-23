# TO DO: Write the test that ensure:
# - Our array_to_hash method successfully converts an array to a hash, with the given pattern
# - Our palindrome? method successfully returns whether the given argument is a plindrome or not

require 'manipulate_objects'


describe '#array_to_hash' do
  it 'returns an error if the parameter is not an Array' do
    error = 'Your parameter must be an Array.'
    expect(array_to_hash('123')).to eq(error)
  end

  it 'returns an error if the values are not the same type' do
    error = "The values doesn't have the same type."
    expect(array_to_hash(['aze', 'ert', 3])).to eq(error)
    expect(array_to_hash([2, 3, 4, true])).to eq(error)
  end

  it 'returns an error if all the values are not present in the hash' do
    array = ['aze', 'ert', 'yui']
    new_hash = array_to_hash(['aze', 'ert', 'yui'])

    expect(new_hash.length).to eq(array.length)
  end

  it 'returns an error if the pattern or the increment does not match' do
    array = ['aze', 'ert', 'yui']
    new_hash = array_to_hash(['aze', 'ert', 'yui'])

    iteration = 1
    new_hash.each do |key, value|
      expect(key).to eq("key#{i}")
      iteration += 1
    end
  end

  it 'returns a hash' do
    expect(array_to_hash(['aze', 'ert', 'yui'])).to eq({key$1: 'aze', key$2: 'ert', key$3: 'yui'})
  end
end

describe '#palindrome?' do
  it 'returns a boolean' do
    expect(palindrome?('noon')).to be true
    expect(palindrome?('radar')).to be true
    expect(palindrome?('coucou')).to be false
  end

  it 'returns an error if the parameter is not a String' do
    error = 'The paramter must be type String'
    expect(palindrome?(true)).to eq(error)
    expect(palindrome?(1)).to eq(error)
  end

  it 'returns a string that is a paladrom' do
    word = 'kayak'
    expect(palindrome?(word)).to eq(word.reverse)
  end
end