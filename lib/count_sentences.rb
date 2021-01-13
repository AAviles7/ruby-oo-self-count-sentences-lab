require 'pry'

class String
    
  def sentence?
    return self.end_with?(".")
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
      x = 0
      ans = 0
      arr = self.split
      while arr.length > x do
        if arr[x].sentence? || arr[x].question? || arr[x].exclamation?
          ans += 1
        end
        x += 1
      end
      return ans
  end
end