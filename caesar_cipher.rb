# frozen_string_literal: true

require 'pry-byebug'

def caesar_cipher(text, shift_factor)
  characters = text.chars
  encoded_characters = []

  characters.each_index do |index|
    character = characters[index]

    encode(character, encoded_characters, shift_factor)
  end
  encoded_characters.join
end

def encode(character, encoded_characters, shift_factor)
  case character
  when 'a'..'z'
    letters = (character..'z').to_a + ('a'..'z').to_a
    encoded_characters << letters[shift_factor]
  when 'A'..'Z'
    letters = (character..'Z').to_a + ('A'..'Z').to_a
    encoded_characters << letters[shift_factor]
  else
    encoded_characters << character
  end
end

puts caesar_cipher('What a string!', 5)
