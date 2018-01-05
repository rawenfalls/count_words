=begin
программа запускается и просит ввести фразу, после введения фразы, счетает кол-во слов и выводит число слов с
пояснением, потом говорит, что пользователь может ввести y, yes, д, да, для ввода новой фразы или ввести n, no, н, нет,
для завершения программы
=end

unacceptable_words = ["на","под","за","из","к","по","об","от","в","у","с","о","над","около","при","перед","через","и","а","но","хотя","чтобы","зато","-","_","как","да","или","либо"]
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

loop do
  puts "введите фразу, для подсчёта кол-во слов"
  alphabetic_expression = gets.chomp.strip

  alphabetic_expression_downcase = alphabetic_expression.downcase.scan(/[A-Za-zА-Яа-я0-9\-_]+/)
  alphabetic_expression = alphabetic_expression.scan(/[A-Za-zА-Яа-я0-9\-_]+/)
  unacceptable_words = unacceptable_words & alphabetic_expression_downcase
  unacceptable_words.map do |word|
    alphabetic_expression.delete (word)
  end

  puts "кол-во слов в фразе = #{alphabetic_expression.size}" , alphabetic_expression
  puts "если хотите подсчитать кол-во слов в новой фразе введите y, yes, д, да, если хотите закончить программу введите n, no, н, нет"
  check_answer
end