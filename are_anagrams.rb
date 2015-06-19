=begin
Write a method are anagrams?, which takes two ruby strings and checks to see if they are anagrams
=end

def are_anagrams?(string1, string2)
  string1.split('').sort == string2.split('').sort ? true : false
end

def are_anagrams_no_sort?(string1, string2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  string1.each_char do |char|
    hash1[char] += 1
  end
  string2.each_char do |char|
    hash2[char] += 1
  end
  hash1 == hash2 ? true : false
end

p are_anagrams_no_sort?("dog", "god")
p are_anagrams_no_sort?("dog", "balls")