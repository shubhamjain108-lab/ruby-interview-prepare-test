a = (1..100)

p a

result = []

a.each do |i|
  if i % 15 == 0
    result << 'FizzBuzz'
  elsif i % 3 == 0
    result << 'Fizz'
  elsif i % 5 == 0
    result << 'Buzz'
  else
    result << i
  end
end

p result
