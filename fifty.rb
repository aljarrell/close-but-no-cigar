def winning(my_num, ticket_num)
  puts "my_num: #{my_num}"
  puts "ticket_num: #{ticket_num}"
  arr1 = []
    my_num.each do |item|
      #puts item
      if ticket_num.include?(item)
      arr1 << item
      end
    end
    arr1
end
