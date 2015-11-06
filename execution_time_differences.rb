def my_min1(list)
  list.each do |el1|
    verdict = true
    list.each do |el2|
      verdict = false if el1 > el2
    end
    return el1 if verdict
  end
end

def my_min2(list)
  min = list.first

  list.each do |el|
    min = el if el < min
  end

  min
end

def largest_contiguous_subsum1(list)
  sub_arrays = []

  (0...list.length).each do |i|
    (i + 1...list.length).each do |j|
      sub_arrays << list[i..j]
    end
  end

  max_array = sub_arrays.max_by { |sub_array| sub_array.inject(:+) }
  max_array.inject(:+)
end

def largest_contiguous_subsum2(list)
  max_sum = curr_sum = list.first
  max_idx = 0

  (1...list.length).each do |i|
    curr_sum += list[i]
    if curr_sum > max_sum
      max_sum = curr_sum
      max_idx = i
    end
  end

  curr_sum = max_sum
  (0...max_idx).each do |i|
    curr_sum -= list[i]
    max_sum = curr_sum if curr_sum > max_sum
  end

  max_sum
end
