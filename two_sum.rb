require 'byebug'

def bad_two_sum?(arr, target_sum)
  (0...arr.length).each do |i|
    (i + 1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target_sum
    end
  end

  false
end # time complexity: n(n - 1) / 2

def okay_two_sum?(arr, target_sum)
  sorted = arr.sort
  (0...sorted.length).each do |i|
    (i + 1...sorted.length).each do |j|
      return true if sorted[i] + sorted[j] == target_sum
      break if sorted[i] + sorted[j] > target_sum
    end
  end
  false
end

def working_inward_two_sum?(arr, target_sum)
  arr.sort!
  lower_index = 0
  upper_index = arr.length - 1

  while lower_index != upper_index
    case arr[lower_index] + arr[upper_index] <=> target_sum
    when -1
      lower_index += 1
    when 0
      return true
    when 1
      upper_index -= 1
    end
  end

  false
end

def hash_map_two_sum?(arr, target_sum)
  # debugger
  hash = Hash.new(0)

  arr.each { |element| hash[element] += 1 }

  arr.each do |element|
    hash[element] -= 1
    unless hash[target_sum - element] == 0
      return true
    end
    hash[element] += 1
  end

  false
end

def hash_map_four_sum?(arr, target_sum)
  # debugger
  hash = Hash.new(0)
  arr.each { |element| hash[element] += 1 }

  (0..target_sum / 2).each do |first_target|
    arr.each do |element|
      hash[element] -= 1
      unless hash[first_target - element] == 0
        hash[first_target - element] -= 1
        second_target = target_sum - first_target
        arr.each do |element2|
          next if hash[element2] < 1
          hash[element2] -= 1
          unless hash[second_target - element2] <= 0
            return true
          end
          hash[element2] += 1
        end
        hash[first_target - element] += 1
      end
      hash[element] += 1
    end
  end

  false
end
