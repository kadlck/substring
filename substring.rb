def substrings(sentence, dictionary)
  hash = Hash.new
  sentence.split(" ").each {|word|
    count = 0
    dictionary.each {|dict_word| count += 1 if word.downcase.include?(dict_word.downcase)}
    hash[word] = count
  }
  puts(hash.select{|key, data| key if data > 0})
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("low", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

