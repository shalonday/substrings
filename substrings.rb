def substrings(testString, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, word|
    testCopy = testString.downcase 
    until testCopy.partition(word)[1] == "" do
      hash[word] += 1
      testCopy = testCopy.partition(word)[2]
    end
    hash
  end
end

dictionary = ["below","low","own","part","partner","down","go","going","horn","how","howdy","it","i","sit"] 
p substrings("Howdy partner, sit down! How's it going?", dictionary)