def substrings(word, dictionary)
  result = Hash.new(0)

  dictionary.each do |substring|
    occurrences = word.downcase.scan(substring).length
    result[substring] += occurrences unless occurrences <= 0 
  end
  result
  p result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)