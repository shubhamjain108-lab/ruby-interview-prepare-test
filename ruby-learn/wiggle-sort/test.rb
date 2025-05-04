def wiggle_sort(nums)
  sorted = nums.sort
  half = (nums.size + 1) / 2

  # Reverse both halves
  small = sorted[0...half].reverse
  large = sorted[half..-1].reverse

  nums.each_index do |i|
    nums[i] = (i.even? ? small.shift : large.shift)
  end

  nums
end

# Example usage:
nums = [1, 5, 1, 1, 6, 4]
p wiggle_sort(nums)

