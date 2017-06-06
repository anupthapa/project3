module FunWithStrings
  public
  def palindrome?(text)
    t = text.downcase.gsub(/[^a-z]*\s*\d*/, "")
    if t.reverse == t
        puts "#{text} is a palindrome."
    else
        puts "#{text} isn't a palindrome."
    end
  end
end

public
  def count_words(str)
    wordhash = Hash.new
    str.downcase.scan(/\b\w*\b/) do |word|
        if wordhash.has_key?(word) 
            wordhash[word] += 1
        elsif word == ""
        else 
          wordhash[word] = 1
        end
    end
        p wordhash
  end
  
  public
  def anagram_groups(words)
    anagramarray = Array.new
    words.each do |word|  
      result = []
      words.each do |nextword|    
        if (word.downcase.split(//).sort == nextword.downcase.split(//).sort) #compare characters
          result.push(nextword)# if the same MOVE IT to the new array
        end
      end
      anagramarray.push(result) 
    end 
    print(anagramarray.uniq) 
  end

class String
  include FunWithStrings
end

s = String.new
p = String.new
r = String.new
s.palindrome?("Madam I'm Adam")
p.count_words("'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'")
r.anagram_groups(['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'] )