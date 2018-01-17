ignored_words = ["на","под","за","из","к","по","об","от","в","у","с","о","над","около","при","перед","через","и","а","но","хотя","чтобы","зато","-","_","как","да","или","либо"]
begin
  entered_words = ("привет мир на НА На юпитер-9 от об - - - ").strip.scan(/[A-Za-zА-Яа-я0-9\-_]+/)
  ignored_words.each { |ignored_word| entered_words.delete_if{ |word| word =~ /^#{ignored_word}$/i } }
  if entered_words.size == 3
    puts "программма работает исправно"
  end
end