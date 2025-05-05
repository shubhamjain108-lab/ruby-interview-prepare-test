def min_sum_subarray(arr, target)
  sum = 0
  min_len = Float::INFINITY
  left = 0 
  
  arr.each_with_index do |num, right|
    sum += num
    
    while sum >= target
      min_len = [min_len, right - left + 1].min
      sum -= num[left]
      left += 1
    end
  end
  min_len == Float::INFINITY ? 0 : min_len 
end

target = 7
nums = [2, 3, 1, 2, 4, 3]

p min_sum_subarray(nums, target)
