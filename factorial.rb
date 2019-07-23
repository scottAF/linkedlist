def factorial(num)
  
  result = 1
  
  for f in 1..num do
    result = f * result
  end
  
  return result
end

puts factorial(10)


def recursion(num)
  if num == 1
    return 1
  else
    return recursion(num - 1) + recursion(num - 2)
  end
end


puts recursion(10)