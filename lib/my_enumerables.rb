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
    for elem in self
      yield(elem)
    end
  end

  # ~
  def my_each_with_index
    i = 0
    self.my_each do |elem|
      yield(elem, i)
      i += 1
    end
  end


end