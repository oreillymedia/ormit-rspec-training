require 'bob'

RSpec.describe 'Bob' do
  it 'answers statements as "Whatever."' do
    bob = Bob.new
    expect(bob.hey('The weather sure is nice today.')).to eq 'Whatever.'
  end

  it 'answers shouting as "Woah, chill out!"' do
    bob = Bob.new
    expect(bob.hey('WATCH OUT!')).to eq 'Woah, chill out!'
  end
end
