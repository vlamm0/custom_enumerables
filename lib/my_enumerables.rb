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
    self.each { |elem| block_given? ? yield(elem) : elem}
  end

  # ~
  def my_each_with_index
    self.each_with_index { |elem, i| block_given? ? yield(elem, i) : [elem, i]}
  end
end