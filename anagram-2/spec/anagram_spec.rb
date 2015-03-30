require 'anagram'

RSpec.describe 'Anagram' do
  it "returns anagrams for the word listen" do
    words = %w(enlist inlets listen silent list dog)
    word = "listen"
    anagram = Anagram.new(words)
    expect(anagram.output(word)).to eq "enlist inlets listen silent"
  end

  it "returns anagrams for the word list" do
    words = %w(enlist inlets listen silent list dog)
    word = "list"
    anagram = Anagram.new(words)
    expect(anagram.output(word)).to eq "list"
  end

  xit "returns all the words that are anagrams of each other" do
    words = %w(enlist inlets listen silent list dog)
    anagram = Anagram.new(words)
    anagram.output
  end
end
