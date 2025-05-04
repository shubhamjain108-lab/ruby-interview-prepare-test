def reverse_kth(arr, k)
  
  result = []
  
  arr.each_slice(k) do |group|
    result << group.reverse
  end
  result.flatten
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

p reverse_kth(arr, 2)




def reverse_kth(arr, k)
  result = []
  i = 0

  while i < arr.length
    j = [i + k - 1, arr.length - 1].min

    while j >= i
      result << arr[j]
      j -= 1
    end

    i += k
  end
  result
end


arr = [1,2,3,4,5,6,7,8,9]
k = 2

p reverse_kth(arr, k)
