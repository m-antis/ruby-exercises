# Implement a method #substrings that takes a string as the first argument and then 
# an array of valid substrings (your dictionary) as the second argument. It should 
# return a hash listing each substring (case insensitive) that was found in the 
# original string and how many times it was found.


def substrings(string, dictionary)
  matchers = {}

    string.split(' ').map do |input_word|
      dictionary.each do |dictionary_word| 
        matchers[dictionary_word] = input_word if input_word.downcase.include? dictionary_word
      end



      # matchers[input_word] = string.count(input_word)
    end
puts matchers
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary) # ---> { "below" => 1, "low" => 1 }


# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3,
# =>   "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
