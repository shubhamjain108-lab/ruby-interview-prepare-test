def common_prefix(str)
  prefix = str[0]
  
  str.each_index do |i|
    while str[i].index(prefix) != 0
      prefix = prefix[0..-2]
      return false if prefix.empty? 
    end
  end
  prefix
end

str = ["flower", "fly", "flow"]

p common_prefix(str)
