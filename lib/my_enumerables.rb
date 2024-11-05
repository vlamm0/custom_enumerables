module Enumerable
  # Your code goes here
  def my_each_with_index
    i = 0
    self.my_each do |elem|
      yield(elem, i)
      i += 1
    end
  end

  def my_select
    selected = []
    self.my_each { |elem| selected.push(elem) if yield(elem) }
    selected
  end

  # iterates through arr and returns false if any element does not meet condition, otherwise returns true
  def my_all?
    self.my_each { |elem| return false if !yield(elem)} 
    true
  end

  # iterates through arr and returns true if any element meets condition, otherwise returns false
  def my_any?
    self.my_each { |elem| return true if yield(elem)}
    false
  end

  def my_none?(&block)
    !my_any?(&block)
  end

  def my_count(&block)
    block_given? ? my_select(&block).length : self.length
  end
  
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    for elem in self
      yield(elem)
    end
  end

end