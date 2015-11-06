load 'anagrams.rb'
load 'execution_time_differences.rb'
load 'max_windowed_range.rb'
load 'stackqueue.rb'
load 'stacks_n_queues.rb'
load 'two_sum.rb'
require 'benchmark'
# Array.new(1000) {rand(92).chr}.join
# string10 = Array.new(10) {rand(92).chr}.join
# string11 = Array.new(10) {rand(92).chr}.join
# string100 = Array.new(100) {rand(92).chr}.join
# string101 = Array.new(100) {rand(92).chr}.join
# string1000 = Array.new(1000) {rand(92).chr}.join
# string1001 = Array.new(1000) {rand(92).chr}.join
# string10000 = Array.new(10000) {rand(92).chr}.join
# string10001 = Array.new(10000) {rand(92).chr}.join
# string100000 = Array.new(100000) {rand(92).chr}.join
# string100001 = Array.new(100000) {rand(92).chr}.join
# string1000000 = Array.new(1000000) {rand(92).chr}.join
# string1000001 = Array.new(1000000) {rand(92).chr}.join

# puts "10"
# puts Benchmark.measure { anagram?(string10, string11) }
# puts "100" + Benchmark.measure { anagram?(string100, string101) }
# puts "1000" + Benchmark.measure { anagram?(string1000, string1001) }
# puts "10000" + Benchmark.measure { anagram?(string10000, string10001) }

# THIS ALGORITHM SUCKS -- 14 seconds for 10chr strings

# puts "10"
# puts Benchmark.measure { second_anagram?(string10, string11) }
# puts "100"
# puts Benchmark.measure { second_anagram?(string100, string101) }
# puts "1000"
# puts Benchmark.measure { second_anagram?(string1000, string1001) }
# puts "10000"
# puts Benchmark.measure { second_anagram?(string10000, string10001) }

# legit n squared... n*10 => time*100

# puts "10"
# puts Benchmark.measure { third_anagram?(string10, string11) }
# puts "100"
# puts Benchmark.measure { third_anagram?(string100, string101) }
# puts "1000"
# puts Benchmark.measure { third_anagram?(string1000, string1001) }
# puts "10000"
# puts Benchmark.measure { third_anagram?(string10000, string10001) }
# puts "100000"
# puts Benchmark.measure { third_anagram?(string100000, string100001) }
# puts "1000000"
# puts Benchmark.measure { third_anagram?(string1000000, string1000001) }

# almost linear, damn. Nlogn is good

# puts "10"
# puts Benchmark.measure { fourth_anagram?(string10, string11) }
# puts "100"
# puts Benchmark.measure { fourth_anagram?(string100, string101) }
# puts "1000"
# puts Benchmark.measure { fourth_anagram?(string1000, string1001) }
# puts "10000"
# puts Benchmark.measure { fourth_anagram?(string10000, string10001) }
# puts "100000"
# puts Benchmark.measure { fourth_anagram?(string100000, string100001) }
# puts "1000000"
# puts Benchmark.measure { fourth_anagram?(string1000000, string1000001) }

# #fourth_anagram consistently better than third_anagram at strings of
# # legnth 1 million even though it is linear

# puts "1000000"
# puts Benchmark.measure { fifth_anagram?(string1000000, string1000001) }

#fifth_anagram mostly slower than fourth_anagram but less space
# complexity


# execution_time_differences stuff
num10 = Array.new(10) {rand(92)}
num11 = Array.new(10) {rand(92)}
num100 = Array.new(100) {rand(92)}
num101 = Array.new(100) {rand(92)}
num1000 = Array.new(1000) {rand(92)}
num1001 = Array.new(1000) {rand(92)}
num10000 = Array.new(10000) {rand(92)}
num10001 = Array.new(10000) {rand(92)}
num100000 = Array.new(100000) {rand(92)}
num100001 = Array.new(100000) {rand(92)}
num1000000 = Array.new(1000000) {rand(92)}
num1000001 = Array.new(1000000) {rand(92)}

# puts "10"
# puts Benchmark.measure { largest_contiguous_subsum1(num10) }
# puts "100"
# puts Benchmark.measure { largest_contiguous_subsum1(num100) }
# puts "1000"
# puts Benchmark.measure { largest_contiguous_subsum1(num1000) }

# THESE TAKE TOO LONG
# puts "10000"
# puts Benchmark.measure { largest_contiguous_subsum1(num10000) }
# puts "100000"
# puts Benchmark.measure { largest_contiguous_subsum1(num100000) }
# puts "1000000"
# puts Benchmark.measure { largest_contiguous_subsum1(num1000000) }

puts "10"
puts Benchmark.measure { largest_contiguous_subsum2(num10) }
puts "100"
puts Benchmark.measure { largest_contiguous_subsum2(num100) }
puts "1000"
puts Benchmark.measure { largest_contiguous_subsum2(num1000) }
puts "10000"
puts Benchmark.measure { largest_contiguous_subsum2(num10000) }
puts "100000"
puts Benchmark.measure { largest_contiguous_subsum2(num100000) }
puts "1000000"
puts Benchmark.measure { largest_contiguous_subsum2(num1000000) }
