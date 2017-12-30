=begin
+программа запускается и просит ввести фразу, после введения фразы, счетает кол-во слов и выводит число слов с
пояснением, потом говорит, что пользователь может ввести y, yes, д, да, для ввода новой фразы или ввести n, no, н, нет,
для завершения программы
=end

current_path = File.dirname(__FILE__) + '/excuses.txt'
file =File.new(current_path,'r:UTF-8')
excuses = file.readlines.to_a
file.close

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
  phrase = gets.chomp.strip.scan(/[A-Za-zА-Яа-я]+/)
  i = 0
  loop do
    phrase.delete "#{excuses[i].chomp}"
    i = i + 1
    break if excuses[i] == nil
  end

  number_of_words = phrase.size
  puts "кол-во слов в фразе = #{number_of_words}"
  puts phrase
  puts "если хотите подсчитать кол-во слов в новой фразе введите y, yes, д, да, если хотите закончить программу введите n, no, н, нет"
  check_answer
end
