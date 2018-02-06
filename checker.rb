def check_answer
  quit = false
  until quit
    answer = gets.chomp.downcase
    yes_or_no = [["y", "yes", "д", "да"], ["n", "no", "н", "нет"]]
    if yes_or_no.assoc("y").include?(answer)
      quit = true
    elsif yes_or_no.assoc("n").include?(answer)
      abort
    else
      puts "некоректный ввод, попробуйте ещё раз"
    end
  end
end

def check_words(entered_words)
  one_letter_words = %w[а б в ж и к о с у я]
  ignored_words = ["на","под","за","из","по","об","над","около","при","перед","через","от","но","хотя","чтобы","зато","как","да","или","либо"]
  ignored_words.each { |ignored_word| entered_words.delete_if{ |word| (!one_letter_words.any? { |letter| word.casecmp?(letter) } if word.to_s.size == 1 ) || (word =~ /^#{ignored_word}$/i)} }
end


