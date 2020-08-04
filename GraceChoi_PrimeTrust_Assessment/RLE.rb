# 1. check if str input is ASCII (use of .dup to work on a copy so 'frozen string' is not modified)
# 2. convert str to array of letters
# 3. 'chunk' each letter with it's total number of occurrences
# 4. return one-dimensional array using .flatten
def rle(str)
  if str.dup.force_encoding("UTF-8").ascii_only?
    str
        .chars
        .chunk{|i| i}
        .map {|kind, array| [array.length, kind]}.flatten
  end
end

# tests:
examples = {
  'AAAAAAAAAAZZBMMMMMAA' => [10, 'A', 2, 'Z', 1, 'B', 5, 'M', 2, 'A'],
  'ABCDEEEFGBB' => [1, 'A', 1, 'B', 1, 'C', 1, 'D', 3, 'E', 1, 'F', 1, 'G', 2, 'B']
}

examples.each do |str, correct|
  res = rle(str)
  puts "[Correct: #{res == correct}] rle('#{str}') returned '#{res}'"
end

# Big O: O(n), linear time complexity