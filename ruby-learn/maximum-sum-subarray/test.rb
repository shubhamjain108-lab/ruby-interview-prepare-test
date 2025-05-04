def max_sum(arr)
  current = global = arr[0]
  
  (1...arr.size).each do |i|
    current = [arr[i], current + arr[i]].max
    global = [global, current].max
  end
  global
end

arr = [-2,1,-3,4,-1,2,1,-5,4]

p max_sum(arr)
