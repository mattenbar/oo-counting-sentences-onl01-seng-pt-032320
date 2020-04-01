require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end

  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    sentance_array = self.split(/[\.\?\!]/)
    i = 0
    while i < sentance_array.size
      if sentance_array[i] == ""
        sentance_array.delete_at(i)
      end
      i += 1
    end
    sentance_array.size
  end
end
