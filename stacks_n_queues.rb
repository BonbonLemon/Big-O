class MyStack
  def initialize
    @store = []
    @max_stack = []
    @min_stack = []
  end

  def pop
    @max_stack.pop if @max_stack.last == @store.last
    @min_stack.pop if @min_stack.last == @store.last
    @store.pop
  end

  def push(element)
    @store.push(element)
    @max_stack.push(element) if @max_stack.empty? || element >= @max_stack.last
    @min_stack.push(element) if @min_stack.empty? || element <= @min_stack.last
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def max
    @max_stack.last
  end

  def min
    @min_stack.last
  end
end

class StackQueue
  attr_reader :push_cup, :pop_cup
  def initialize
    @push_cup = MyStack.new
    @pop_cup = MyStack.new
  end

  def enqueue(element)
    @push_cup.push(element)
  end

  def dequeue
    if @pop_cup.empty?
      until @push_cup.empty?
        @pop_cup.push(@push_cup.pop)
      end
    end
    @pop_cup.pop
  end

  def size
    @push_cup.size + @pop_cup.size
  end

  def empty?
    @push_cup.empty? && @pop_cup.empty?
  end

end

class MinMaxStackQueue
  def initialize
    @push_cup = MyStack.new
    @pop_cup = MyStack.new
  end

  def enqueue(element)
    @push_cup.push(element)
  end

  def dequeue
    if @pop_cup.empty?
      until @push_cup.empty?
        @pop_cup.push(@push_cup.pop)
      end
    end
    @pop_cup.pop
  end

  def size
    @push_cup.size + @pop_cup.size
  end

  def empty?
    @push_cup.empty? && @pop_cup.empty?
  end

  def max
    return @pop_cup.max if @push_cup.empty?
    return @push_cup.max if @pop_cup.empty?
    [@push_cup.max, @pop_cup.max].max
  end

  def min
    return @pop_cup.min if @push_cup.empty?
    return @push_cup.min if @pop_cup.empty?
    [@push_cup.min, @pop_cup.min].min
  end
end
