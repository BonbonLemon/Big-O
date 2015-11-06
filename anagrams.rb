require 'byebug'
class String
  def anagrams
    split("").permutation.map{ |permutation| permutation.join }.uniq
  end
end

def anagram?(string1, string2)
  string1.anagrams.include?(string2)
end

def second_anagram?(string1, string2)
  # debugger
  letters = string1.split("")
  jetters = string2.split("")

  letters.each_with_index do |letter, i|
    jetters.each_with_index do |jetter, j|
      if letter == jetter
        letters[i] = nil
        jetters[j] = nil
      end
    end
  end

  letters.all?(&:nil?) && jetters.all?(&:nil?)
end

def third_anagram?(string1, string2)
  string1.split("").sort == string2.split("").sort
end

def fourth_anagram?(string1, string2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  string1.split("").each do |letter|
    hash1[letter] += 1
  end

  string2.split("").each do |letter|
    hash2[letter] += 1
  end

  hash1 == hash2
end

def fifth_anagram?(string1, string2)
  hash = Hash.new(0)

  string1.split("").each { |letter| hash[letter] += 1 }
  string2.split("").each { |letter| hash[letter] -= 1 }

  hash.values.all? { |value| value == 0 }
end
