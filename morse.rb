MORSE = {
    'a' => '.-',
    'b' => '-...',
    'c' => '-.-.',
    'd' => '-..',
    'e' => '.',
    'f' => '..-.',
    'g' => '--.',
    'h' => '....',
    'i' => '..',
    'j' => '.---',
    'k' => '-.-',
    'l' => '.-..',
    'm' => '--',
    'n' => '-.',
    'o' => '---',
    'p' => '.--.',
    'q' => '--.-',
    'r' => '.-.',
    's' => '...',
    't' => '-',
    'u' => '..-',
    'v' => '...-',
    'w' => '.--',
    'x' => '-..-',
    'y' => '-.--',
    'z' => '--..'
  }


  def decode_char(char)
    MORSE.each { |key, value|
        return key.upcase if value == char
    }
     end 

     def decode_word(word)
      new_word = ''
      new_arr = word.split
      new_arr.each {|value|
      new_word += decode_char(value)
      }
      return new_word 
  end 
  
  # Sentence method
  
  def decode_sentence(sentence)
      new_sentence = ''
      new_arr = sentence.split('   ')
      new_arr.each {|value|
      new_sentence += "#{decode_word(value)} "
      }
      return new_sentence
  end
  
  puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
  