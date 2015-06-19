def is_prime?(integer)
  divisors = (2..(integer-1)).to_a
  divisors.each do |divisor|
    return false if integer % divisor == 0
  end
  return true
end

p is_prime?(100)
p is_prime?(17)
p is_prime?(15)
p is_prime?(24)

