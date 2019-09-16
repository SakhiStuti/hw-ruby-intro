# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr = arr.sort
  n = arr.length
  if n == 0
    return 0
  elsif n == 1
    return arr[0]
  else
    return arr[-1] + arr[-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  return false if arr.length == 1
  arr.combination(2).to_a.each {|x, y| return true if x+y == n}
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase.match?(/\A[a-z]/) and s.downcase.match?(/\A[^aeiou]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s.match?(/\A[01]+\Z/) and s.to_i(2)%4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("Empty isbn String") if isbn.empty?
    @isbn = isbn
    raise ArgumentError.new("Not a valid Price") if price <= 0
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(isbn) #setter method
    @isbn = isbn
  end
  
  def price=(price) #setter method
    @price = price
  end
    
  def price_as_string
    return '$' + '%.2f' % (price)
  end
end
