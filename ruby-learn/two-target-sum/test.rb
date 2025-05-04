def two_sum(nums, target)
  hash = {}
  
  nums.each_with_index do |a, i|
    current = target - a
    
    if hash.key?(current)
      p [hash[current], i]
    end
    hash[a] = i
  end
  []
end

nums = [3, 1, 5, 3, 4]
target = 8

two_sum(nums, target)
