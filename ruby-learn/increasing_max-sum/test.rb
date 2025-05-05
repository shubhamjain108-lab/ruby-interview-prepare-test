def increasing_sum(arr)
  current_sum = max_sum = arr[0]
  current_sub = max_sub = [arr[0]]
  
  (1...arr.size).each do |i|
    if arr[i] > arr[i - 1]
      current_sum += arr[i]
      current_sub << arr[i]
    else
      if current_sum > max_sum
        max_sum = current_sum
        max_sub = current_sub
      end
      current_sum = arr[i]
      current_sub = [arr[i]]
    end
    if current_sum > max_sum
      max_sum = current_sum
      max_sub = current_sub
    end
  end
  return max_sum, max_sub
end

arr = [10, 20, 30, 5, 10, 50]

#arr = [1,2,3,4,5]
p increasing_sum(arr)
