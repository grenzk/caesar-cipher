require 'pry-byebug'

def caesar_cipher(text, shift_factor)
  characters = text.chars
  ciphered_letters = []
  # binding.pry
  characters.each_index do |index|
    character = characters[index]
    case character
    when 'a'..'z'
      letters = (character..'z').to_a + ('a'..'z').to_a
      ciphered_letters << letters[shift_factor]
    when 'A'..'Z'
      letters = (character..'Z').to_a + ('A'..'Z').to_a
      ciphered_letters << letters[shift_factor]
    else
      ciphered_letters << character
    end
  end
  ciphered_letters.join
end

puts caesar_cipher('What a string!', 5)
