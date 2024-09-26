# Take string and number from function
# Take modulus of 26 of number to make it fit the alphabet
# Have string of all alphabet letters
# Split string into array of individual characters
# If character is part of the alphabet, apply shift and append to solution array
# If not append to solution array as is
# take the index of the letter and add the shift number (apply modulus) to find the index of the final letter
# have one string for capital letters and one for non capital letters?



def caesar_cipher(input_string, shift_int)
  alphabet_str = "abcdefghijklmnopqrstuvwxyz"
  alphabet_cap_str = alphabet_str.upcase
  alphabet = alphabet_str.split("")
  alphabet_cap = alphabet_cap_str.split("")

  output_array = []
  input_array = input_string.split("")
  input_array.each do |char|
    if alphabet.include?(char)
      index = alphabet.find_index(char)
      new_index = (index + (shift_int % 26)) % 26
      new_char = alphabet[new_index]
      output_array.append(new_char)
    elsif alphabet_cap.include?(char)
      index = alphabet_cap.find_index(char)
      new_index = (index + (shift_int % 26)) % 26
      new_char = alphabet_cap[new_index]
      output_array.append(new_char)
    else
      output_array.append(char)
    end
  end
  puts output_array.join
end

caesar_cipher("AbCDEfGHIJKLMNoPQR';.';STuVWxYZ{{{...!!!}}}", 5)
