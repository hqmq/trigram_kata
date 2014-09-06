module Generator
  def self.generate(trigram, prompt, size)
    words = prompt.split " "
    1.upto(size - 2).each do |i|
      prompt = words[-2..-1].join(" ")
      possibilities = trigram.get(prompt)
      next unless possibilities
      words << possibilities.sample
    end
    words.join " "
  end
end
