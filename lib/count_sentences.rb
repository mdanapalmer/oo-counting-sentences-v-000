require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
  #The count_sentences method needs to be explained.
  #self.end_with?("!")
  #self.split.length solves the first two tests...
  #binding.pry
end