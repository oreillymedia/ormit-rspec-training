require_relative '../anagram'
require 'spec_helper'

describe Anagram do
  describe '.extract_anagrams' do
    describe 'given two strings that are duplicated of each other' do
      let(:input) { %w(god god dog) }
      it 'returns a hash of anagrams with value that contains no duplication' do
        expect(Anagram.extract_anagrams(input)).to eq({ 'dgo' => ['god', 'dog'] })
      end
    end

    describe 'given a set of words' do
      let(:input) { %w(god dog maly toro) }
      it 'returns a hash of words that is anagram of each other' do
        expect(Anagram.extract_anagrams(input)).to eq({ 'dgo' => ['god', 'dog'] })
      end
    end

    describe 'given one string' do
      let(:input) { %w(god) }

      it 'returns a empty hash' do
        expect(Anagram.extract_anagrams(input)).to eq({})
      end
    end
  end if Anagram.respond_to? :extract_anagrams

  describe '.max_anagrams_lengths' do
    describe 'given a set of words' do
      let(:input) { input = %w(pares parse pears rapes reaps spare spear dog god algorithmically logarithmically) }

      it 'returns an array with first element is the char length and second is is array of the longest anagrams' do
        Anagram.extract_anagrams(input)
        expect(Anagram.max_anagrams_lengths).to eq ['aacghiilllmorty', ['algorithmically', 'logarithmically']]
      end
    end
  end if Anagram.respond_to? :max_anagrams_lengths

  describe '.max_anagrams_count' do
    describe 'given a set of words' do
      let(:input) { %w(pares parse pears rapes reaps spare spear dog god) }

      it 'returns the anagram set that has most words' do
        Anagram.extract_anagrams(input)
        expect(Anagram.max_anagrams_count).to eq ['aeprs', ['pares', 'parse', 'pears', 'rapes', 'reaps', 'spare', 'spear']]
      end
    end
  end if Anagram.respond_to? :max_anagrams_count
end
