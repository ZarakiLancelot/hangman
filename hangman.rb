require_relative "word_info"

hidden_word = "hello"
found_letters = []
wrong_letters = []

loop do
  info = word_info(hidden_word, found_letters)

  puts info
  puts

  print "Wrong letters: "
  puts wrong_letters.sort.uniq.join(" ")
  puts

  print "Give me a letter: "

  answer = gets
  answer = answer.chomp.downcase

  if answer == 'stop'
    exit
  end

  if answer.length > 1
    puts "You can only give me one letter at a time."
  elsif answer.empty?
  elsif hidden_word.include? answer
    puts "You got a letter, this is part of the hidden word!"
    
    if found_letters.include? answer
    else
      found_letters << answer
    end
  else
    puts "That letter is not in the word."
    wrong_letters << answer.upcase
  end
end
