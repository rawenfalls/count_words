=begin
программа запускается и просит ввести фразу, после введения фразы, счетает кол-во слов и выводит число слов с
пояснением, потом говорит, что пользователь может ввести y, yes, д, да, для ввода новой фразы или ввести n, no, н, нет,
для завершения программы
=end

require "./checker.rb"

loop do
  puts "введите фразу, для подсчёта кол-во слов"
  entered_words = gets.chomp.strip.scan(/[\wА-Яа-я\-_]+/)
  check_words(entered_words)
  puts "кол-во слов в фразе = #{entered_words.size}" , entered_words
  puts "если хотите подсчитать кол-во слов в новой фразе введите y, yes, д, да, если хотите закончить программу введите n, no, н, нет"
  check_answer
end