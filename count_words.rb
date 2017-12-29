=begin
 программа запускается и просит ввести фразу, после введения фразы, счетает кол-во слов и выводит число слов с
пояснением, потом говорит, что пользователь может ввести y, yes, д, да, для ввода новой фразы или ввести n, no, н, нет,
для завершения программы
=end

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
  number_of_words = gets.chomp.strip.scan(/\w+/).size
  puts "кол-во слов в фразе = #{number_of_words}"
  puts "если хотите подсчитать кол-во слов в новой фразе введите y, yes, д, да, если хотите закончить программу введите n, no, н, нет"
  check_answer
end
