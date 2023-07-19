def decode_char(morse_code)
  morse_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
    '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
    '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_dict[morse_code]
end

def decode_word(morse_word)
  morse_chars = morse_word.split
  morse_chars.map { |morse_char| decode_char(morse_char) }.join
end

def decode(message)
  morse_words = message.split('   ')
  morse_words.map { |morse_word| decode_word(morse_word) }.join(' ')
end

morse_message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(morse_message)
puts decoded_message
