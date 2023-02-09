# +letter+ should be +nil+ or part of the given +word+ and down-case
def word_info word, letters
  n = word.length
  underscores = "_ " * n

  letters.each do |letter|
    i = word.index(letter)
    underscores[i * 2] = letter.upcase
  end

  underscores
end
