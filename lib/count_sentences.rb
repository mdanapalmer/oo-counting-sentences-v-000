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
  #self will split when ending with ., ?, !
  #if punctuation |w| size is <2, delete. (unsure about #this one)
  #.size indicates the size of the split self.
  #self.end_with?("!")
  #self.split.length solves the first two tests...
  #binding.pry
end