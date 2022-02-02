# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  ans=0
  for i in arr do
    ans+=i
  end
  return ans
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.length==0
  return arr[0] if arr.length==1
  return sum(arr.sort.last(2))
  
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length<=1
  
  hashTable= Hash.new(0)
  arr.each do |element|
    if hashTable.key?element
      return true
    else
      hashTable[n-element]= element
    end
  end
    return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  # \w for any word characters
  
    /^[^aeiouAEIOU\d\W]/i.match(s) != nil
end 

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.length==0 || s.match(/[^ 01]/);
  s.to_i%4==0
  
end

# Part 3

class BookInStock
  
# YOUR CODE HERE
def initialize(isbn, price)
  throw ArgumentError if isbn.empty? || price<=0
  @isbn=isbn
  @price=price
end


def price
  @price
end

def isbn
  @isbn

end

def price=price
  throw ArgumentError if price<=0
  @price= price
end

def isbn= isbn
  throw ArgumentError if isbn.empty?
  @isbn= isbn
end



def price_as_string
  return "$" + "#{'%.2f'  %@price}"
end
end
