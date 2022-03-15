# frozen_string_literal: true

require 'pry-byebug'

def caesar_cipher(text, shift_factor)
  characters = text.chars
  ciphered_letters = []

  characters.each_index do |index|
    character = characters[index]
    encode(character, ciphered_letters, shift_factor)
  end
  ciphered_letters.join
end

def encode(character, ciphered_letters, shift_factor)
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

puts caesar_cipher('What a string!', 5)
