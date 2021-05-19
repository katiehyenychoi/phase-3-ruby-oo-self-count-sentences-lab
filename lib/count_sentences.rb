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
    # sent_array = self.split(" ").reject { |str| str.empty? }
    # sent_array.count
    
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
   
    # binding.pry 
  end
  # binding.pry #does not work? , count_sentences // error
end
# binding.pry #does not work?count_sentences // error