class Trigram
  attr_reader :hash

  def initialize(text)
    @hash = {}
    text.split(" ").each_cons(3) do |word_1, word_2, word_3|
      key = "#{word_1} #{word_2}"
      hash[key] ||= []
      hash[key] << word_3
    end
  end

  def get(two_words)
    hash[two_words]
  end
end
