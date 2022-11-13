module Enumerable
  # Your code goes here
  def my_each_with_index
    for i in 0...self.length
      yield(self[i], i)
    end
    self
  end

  def my_select
    result = []
    self.my_each do |item|
      result << item if yield(item)
    end
    result
  end

  def my_all?
    self.my_each do |item|
      return false unless yield(item)
    end
    true
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    # Your code here
    i = 0
    while i < self.length
      yield(self[i])
      i += 1
    end
    self
  end
    
end
