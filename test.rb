require "./checker.rb"
require "benchmark"

def activate_count_words_test
  current_path = File.dirname(__FILE__)
  text = File.new(current_path + "/война_и_мир.txt")
  entered_words = text.read.scan(/[\wА-Яа-я\-_]+/)
  check_words(entered_words)
  puts "Количество слов в фразе = #{entered_words.size}"
end

Benchmark.bm(7) do |x|
  x.report { activate_count_words_test }
end