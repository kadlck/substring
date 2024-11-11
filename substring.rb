def substrings(word, dictionary)
  count = 0
  dictionary.each {|dict_word| count += 1 if dict_word.downcase == word.downcase}
  hash = {word => count}
  puts(hash)
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("", dictionary)
