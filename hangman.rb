require_relative "word_info"
require_relative "draw_gallows"

hidden_word = "rubocop"
found_letters = []
wrong_letters = []
errors_counter = 0

loop do
  draw_gallows errors_counter
  
  if errors_counter > 6
    puts "You lost! The hidden word was #{hidden_word}"
    break
  end

  info = word_info(hidden_word, found_letters)

  puts info
  puts

  unless info.include?('_')
    puts "You won!"
    break
  end

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
    errors_counter += 1
  end
end
