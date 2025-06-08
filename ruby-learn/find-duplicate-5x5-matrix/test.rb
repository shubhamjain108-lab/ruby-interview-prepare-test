arr = Array.new(5) { Array.new(5) { rand(500) }}

def find_duplicate(arr)
  hash = {}
  arr.map do |i|
    i.each do |j|
      if hash.key?(j)
        hash[j] += 1
      else
        hash[j] = 1
      end
    end
  end
  hash.select { |k, v| v >= 2 }
end

p find_duplicate(arr)

