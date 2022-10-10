def stock_picker(stock_array)
  
    days = []
  
    max_value = 0
    
   stock_array.each_with_index do |num, indx|
      stock_array.each_with_index do |n, i|
        if i <= indx
          next
        else
          if (n - num) > max_value
            max_value = n - num
            days = []
            days.push(indx,i)
          end
        end
      end
    end
    p max_value
    p days
    return days
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])
  
  