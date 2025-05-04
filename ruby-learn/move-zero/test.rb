def move_zeroes(nums)
  last_non_zero = 0

  nums.each_with_index do |num, i|
    if num != 0
      nums[last_non_zero] = num
      last_non_zero += 1
    end
  end

  (last_non_zero...nums.length).each do |i|
    nums[i] = 0
  end

  nums
end

arr = [0,1,0,3,12]

p move_zeroes(arr)
