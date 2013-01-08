class MessageFilter
  attr_reader :ng_words
  def initialize(*words)
    @ng_words = words
  end

  def detect?(text)
    @ng_words.any? {|word| text.include? word }
  end
end
