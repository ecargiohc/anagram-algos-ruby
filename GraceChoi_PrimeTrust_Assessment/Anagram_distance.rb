# 1. make sure both word inputs are of equal length
# 2. cache each character of word1 and its number of occurrence into hash table
# 3. go through each character of word2, subtracting number of char's occurrence in hash
# 4. return aggregate of remaining values in hash
def anagram_distance(word1, word2)
  if word1.length != word2.length
    return -1;
  end

  hash = {};

  word1.each_char do |ch|
    hash[ch] = hash[ch].nil? ? 1 : hash[ch]+1
  end

  word2.each_char do |ch|
    if !hash[ch].nil? && hash[ch] > 0
      hash[ch] -=1
    end
  end

  hash.values.sum
end

# tests:
examples = {
    %w[silent listen] => 0,
    %w[book look]     => 1,
    %w[aaaa bbbb]     => 4,
    %w[ab c]          => -1,
    %w[xyzzz zzzzz]   => 2
}

examples.each do |words, correct|
  res = anagram_distance(*words)
  puts "[Correct: #{res == correct}] anagram_distance('#{words[0]}', '#{words[1]}') returned '#{res}'"
end

# Big O: O(n), linear time