require "./checker.rb"
begin
  entered_words = ("привет мир на НА На юпитер-9 от об - - - ").strip.scan(/[A-Za-zА-Яа-я0-9\-_]+/)
  check_words(entered_words)
  if entered_words.size == 3
    puts "программма работает исправно"
  end
end