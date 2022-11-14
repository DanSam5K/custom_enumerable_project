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

  def my_any?
    self.my_each do |item|
      return true if yield(item)
    end
    false
  end

  def my_none?
    self.my_each do |item|
      return false if yield(item)
    end
    true
  end

  def my_count
    if block_given?
      count = 0
      self.my_each  do |item|
        count += 1 if yield(item)
      end
      count
    else
      self.length
    end
  end
  

  #Version 2 of my_ocunt

  # def my_count
  #   return self.size if !block_given?

  #   count = 0
  #   self.my_each do |item|
  #     count += 1 if yield(item)
  #   end
  #   count
  # end

  def my_map
    result = []
    self.my_each do |item|
      result << yield(item)
    end
    result
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
