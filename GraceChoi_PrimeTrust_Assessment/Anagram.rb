# 1. organize each character of each word alphabetically
# 2. check if both words share equal values
def anagram?(word1, word2)
  # call helper:
  alpha_sort(word1) == alpha_sort(word2)
end

def alpha_sort(string)
    string.chars.sort.join
end

# tests:
examples = {
    %w[silent listen]      => true,
    %w[brainy binary]      => true,
    %w[adobe abode]        => true,
    %w[anagram palindrome] => false,
    %w[book look]          => false
}

examples.each do |words, correct|
  res = anagram?(*words)
  puts "[Correct: #{res == correct}] anagram?('#{words[0]}', '#{words[1]}') returned '#{res}'"
end

# Big O: O(nlog(n))