class MessageFilter
  def initialize(*words)
    @words = words
  end

  def detect?(text)
    @words.any? {|word| text.include? word }
  end
end
