puts "Password Generator"
puts "\tThis is our password generator\n\tThis will translate a phrase into l33t sp34k"

# We are going to generate a password off of a phrase the user gives us
# * We will first get rid of all spaces
# * We will then translate characters:
# *    a = 4 *
# *    e = 3
# *    i = 1
# *    o = 0
# *    s = $
#
# EXAMPLE:  Catch the Ball will be C4tchTh3B4ll

DICTIONARY = {
  'a' => '4',
  'e' => '3',
  'i' => '1',
  'o' => '0',
  's' => '$',
  'u' => '7',
}

puts "\n\nPlease enter a phrase you want translated"
phrase = gets.chomp

no_space_string = phrase.gsub(" ", "")

pass_phrase = ""

no_space_string.split("").each do |character|

  if DICTIONARY.has_key?(character.downcase)
    pass_phrase << DICTIONARY[character.downcase]
  else
    pass_phrase << character
  end

  # case character.downcase
  # when 'a' then pass_phrase << '4'
  # when 'e' then pass_phrase << '3'
  # when 'i' then pass_phrase << '1'
  # when 'o' then pass_phrase << '0'
  # when 's' then pass_phrase << '$'
  # else
  #   pass_phrase << character
  # end

end

puts "You entered: \"#{ phrase }\""
puts "The new pass phrase is : \"#{ pass_phrase }\""
