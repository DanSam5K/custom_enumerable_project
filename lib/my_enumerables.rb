module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    # Your code here
    arr = self
    i = 0
    while i < arr.length
      block_given? ? yield(arr[i]) : arr[i]
      i += 1
    end
    arr
  end
    
end
