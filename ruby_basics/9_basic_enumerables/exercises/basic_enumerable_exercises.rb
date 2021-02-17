def display_current_inventory(inventory_list)
  inventory_list.each do |key, value|
    puts "#{key},\squantity:\s#{value}"
  end
end

def display_guess_order(guesses)
  guesses.each_with_index { |item, i| puts "Guess ##{i += 1} is #{item}" }
end

def find_absolute_values(numbers)
  numbers.map { |i| i.abs }
end

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  inventory_list.select { |item, value| value < 4 }
end

def find_longest_word(word_list)
  word_list.reduce { |longest_word, word| longest_word.length > word.length ? longest_word : word }
end

def find_longer_words(word_list, base_word)
  word_list.select { |word| word.length > base_word.length }
end

def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: use a new hash or an empty hash as the initial accumulator value
  word_list.reduce({}) do |hash, value|
    hash[value] = value.size
    hash
  end

end
