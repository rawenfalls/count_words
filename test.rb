require "./checker.rb"
begin
  entered_words = ("привет мир на НА На юпитер-9 от об - - - ").strip.scan(/[А-Яа-я][\wА-Яа-я\-_]+/)
  check_words(entered_words)
  if entered_words.size == 3
    puts "программма работает исправно"
  else
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    puts "!!!программма работает НЕИСПРАВНО!!!"
    puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  end
end