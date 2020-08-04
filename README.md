# anagram-algos-ruby

Instructions:

## Problem 1: Run-length encoding
Run-length encoding (RLE) is a simple encoding algorithm. A run is a
repeating sequence of the same element. With RLE repeated runs are
stored as a single value and a count, rather than the actual run.
The order is important: the count comes first, followed by the value. Implement a method #rle which accepts a String argument and returns an RLE formatted Array of that string.

Example:
- "AAAAAAAAAAZZBMMMMM" --> byte[] { 10, 'A', 2, 'Z', 1, 'B', 5, 'M' }
- "ABCDEEEFGBB" --> byte[] { 1, 'A', 1, 'B', 1, 'C', 1, 'D', 3, 'E', 1, 'F', 1, 'G', 2, 'B'  }
#

```ruby
# Performs run-length encoding (RLE) on a string
#
# @param str [String] The string to encode with RLE. Only ASCII characters
# @return [Array<Numeric, String>] an array encoded with RLE
def rle(str)

end

examples = {
  'AAAAAAAAAAZZBMMMMMAA' => [10, 'A', 2, 'Z', 1, 'B', 5, 'M', 2, 'A'],
  'ABCDEEEFGBB' => [1, 'A', 1, 'B', 1, 'C', 1, 'D', 3, 'E', 1, 'F', 1, 'G', 2, 'B']
}

examples.each do |str, correct|
  res = rle(str)
  puts "[Correct: #{res == correct}] rle('#{str}') returned '#{res}'"
end
```

## Problem 2: Anagram
An anagram is a word formed by rearranging the letters from a different word, using all of the original letters exactly once. Implement a method #anagram? which accepts two String arguments and returns true if they are anagrams of each other, otherwise false.

Example:
- "silent", "listen"
- "brainy", "binary"
- "adobe", "abode"

```ruby
# Checks if two words are anagrams of each other
#
# @param word1 [String]
# @param word2 [String]
# @return [Boolean]
def anagram?(word1, word2)

end

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
```

## Problem 3: Anagram Distance
Implement a method #anagram_distance which accepts two String arguments and determines the minimum number of characters needed to change in order to make them anagrams of each other. **Note** you do not need to take into account that the inputs or anagrams are real English words. This method should return `-1` if it is not possible to make an anagram out of simple character swaps, and should return `0` if the words are already anagrams of each other.

Examples:
- "silent", "listen" -> 0
  - These words are already anagrams of each other
- "book", "look" -> 1
  - We can either change "b" to "l" or "l" to "b"
- "aaaa", "bbbb" -> 4
  - We would have to replace all characters in either "aaaa" or "bbbb"
- "ab", "c" -> -1
  - It is not possible to make an anagram as these words have different lengths
- "zzzzz", "xyzzz" -> 2
  - We can replace "xy" in the second string with "zz"

```ruby
# Checks how many simple character swaps would be necessary
# to make two words anagrams of each other
#
# @param word1 [String]
# @param word2 [String]
# @return [Integer]
def anagram_distance(word1, word2)

end

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
```
