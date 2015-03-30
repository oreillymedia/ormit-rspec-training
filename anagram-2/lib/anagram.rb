class Anagram

  def initialize(words)
    @words = words
  end

  def output(word)
    provided_word = word.chars.sort
    anagrams = []
    @words.each do |w|
      if provided_word == w.chars.sort
        p w
        anagrams.push(w)
      end
    end
    return anagrams.join(' ')
  end
end
