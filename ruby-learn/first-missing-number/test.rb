def first_missing_positive(nums)
  n = nums.length

  # Step 1: Clean up values that are not in the range [1, n]
  nums.each_with_index do |num, i|
    nums[i] = 0 if num <= 0 || num > n
  end

  # Step 2: Use index marking to indicate which values are present
  nums.each do |num|
    val = num.abs
    if val > 0 && val <= n
      nums[val - 1] = -nums[val - 1].abs if nums[val - 1] != 0
      nums[val - 1] = -1 if nums[val - 1] == 0
    end
  end

  p nums
  # Step 3: Find the first missing positive
  nums.each_with_index do |num, i|
    return i + 1 if num >= 0
  end

  # If all indices are marked, return n + 1
  n + 1
end


#nums = [1,2,0]

nums = [3,4,-1,1]

p first_missing_positive(nums)
