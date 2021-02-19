def substrings(string, dictionary)
  substrings_found = {}
  string = string.gsub(/[^0-9a-z ]/i, '').downcase
  dictionary.each { |word| substrings_found[word] = string.scan("#{word}").count unless !string.include? word }
  substrings_found
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
