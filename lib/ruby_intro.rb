# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return 0 if arr.empty?
  count = 0
  arr.each {|x| count += x} 
  return count
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr.sort!
  return arr.pop + arr.pop
end

def sum_to_n? arr, n
  return false if arr.empty? 
  return false if arr.length == 1
  arr.each do |x|
    if x < n
      arr.each {|y| return true if x != y && x + y == n }
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.downcase!
  return false if s.empty?
  return false if not s.chr =~ /[[:alpha:]]/
  return false if ["a", "e", "i", "o", "u"].include? s.chr
  return true
end

def binary_multiple_of_4? s
  return false if s.empty?
  return false if s =~ /[[:alpha:][:cntrl:]]/
  return true if s.to_i % 4 ==  0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, 'Argument is not a' if isbn.empty? #=~ /[[:alpha:][:cntrl:]]/
    raise ArgumentError, 'Argument is not a positive number!' if price <= 0
    @ISBN = isbn
    @price = price
    '''attr_accessor :ISBN
    attr_accessor :price'''
  end
  
  def price_as_string
    return "$%.2f" % @price
  end
  
  def isbn
    @ISBN
  end
  
  def price
    @price
  end
  
  def isbn=(isbn)
    @ISBN = isbn
  end
  
  def price=(price)
    @price = price
  end
end
