def length_of_lis(nums)
  return 0 if nums.empty?

  dp = Array.new(nums.size, 1)

  (1...nums.size).each do |i|
    (0...i).each do |j|
      if nums[i] > nums[j]
        dp[i] = [dp[i], dp[j] + 1].max
      end
    end
  end

  dp.max
end

arr = [10, 9, 2, 5, 3, 7, 101, 18]

p length_of_lis(arr)
