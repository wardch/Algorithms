=begin
write a recursion program which takes an integer and gives it's factorial. And also another program which takes an integer and returns the sum of all of the integers between the input and 0
=end

def factorial(num)
  return 1 if num == 1
  num * factorial(num-1)
end

def sum(num)
  return 1 if num == 1
  num + sum(num - 1)
end

# tests
p factorial(5)
p sum(100)
