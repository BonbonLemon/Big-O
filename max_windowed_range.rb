require_relative 'stacks_n_queues'

# def windowed_max_range(arr, window)
#   current_max_range = nil
#
#   (0..arr.length - window).each do |i|
#     curr_window = arr[i...i + window]
#     if current_max_range.nil? || (curr_window.max - curr_window.min) > current_max_range
#       current_max_range = curr_window.max - curr_window.min
#     end
#   end
#
#   current_max_range
# end

def windowed_max_range(arr, window)
  curr_window = MinMaxStackQueue.new

  i=0
  until i == window
    curr_window.enqueue(arr[i])
    i += 1
  end
  

  current_max_range = curr_window.max - curr_window.min
  until i == arr.length
    curr_window.dequeue
    curr_window.enqueue(arr[i])
    if curr_window.max - curr_window.min > current_max_range
      current_max_range = curr_window.max - curr_window.min
    end
    i += 1
  end

  current_max_range
end
