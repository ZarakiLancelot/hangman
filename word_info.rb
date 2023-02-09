# +letter+ should be +nil+ or part of the given +word+ and down-case
def word_info word, letters
  n = word.length
  underscores = "_ " * n

  letters.each do |letter|
    i = -1
    
    loop do
      i = word.index(letter, i + 1)
      break if i.nil?
      underscores[i * 2] = letter.upcase
    end
  end

  underscores
end
