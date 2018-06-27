class Array
  
  def my_uniq
    result = [] 
    self.each {|el| result << el unless result.include?(el)}
    result  
  end 
  
  def two_sum 
    indices = [] 
    i = 0 
    while i < length - 1
      j = i + 1
      while j < length 
        indices << [i, j] if self[i] + self[j] == 0
        j += 1 
      end 
      i += 1 
    end 
    indices
  end 
  
  def my_transpose
    rows, cols = self.length, self[0].length
    result = Array.new(cols) {Array.new(rows)}
    # i = 0 
  #   while i < rows 
  #     j = 0 
  #     while j < cols
  #       result[i][j] = self[j][i]
  #       j +=1 
  #   end 
  #   i +=1 
  # end 
    self.each_with_index do |row, row_idx| 
      row.each_with_index do |col, col_idx| 
        result[col_idx][row_idx] = col 
      end 
    end 
    result 
  end 

end 

def stock_picker(arr)
   # result = []
   # profit = 0 
   # arr.each_with_index do |el, idx|
   #   break if idx == arr.length - 1
   #   ((idx + 1)...arr.length).each do |idx2|
   # 
   # end 
   # end 
   hash = Hash.new 
   i = 0 
   while i < arr.length - 1
     
     j = i + 1
     while j < arr.length 
       hash[[i, j]] = arr[j] - arr[i]
       j += 1
     end 
     
     i += 1 
   end 
    
   result = hash.sort_by {|_, v| v}
   result.last.first 
   
end 