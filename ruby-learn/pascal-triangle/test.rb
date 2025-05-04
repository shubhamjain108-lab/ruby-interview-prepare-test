def pascal_triangle(rows)
  triangle = [[1]]
  
  (1...rows).each do |i|
    prev_row = triangle[i - 1]
    new_row = [1]
    
    (1...prev_row.length).each do |j|
      new_row << prev_row[j - 1] + prev_row[j]
    end
  
    new_row << 1
    triangle << new_row
  end
  
  mw = triangle.last.join(' ').length
  
  triangle.each { |row| puts row.join(' ').center(mw) }
end

pascal_triangle(5)




def pascal_row(n)
  row = [1]

  (1..n).each do |i|
    row << row[-1] * (n - i + 1) / i
  end
  row
end

p pascal_row(3)
