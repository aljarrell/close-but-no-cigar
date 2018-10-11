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

def off_by_one_number(my_num, ticket_num)
  counter = 0
  x = 0
  arr1 = []
    my_num.each do |num|
      ticket_num.each do |ticket|
        # puts ticket
        # p "ticket #{ticket[x]}"
        # p "num #{num[x]}"
        num.length.times do
          if ticket[x] == num[x]
            counter += 1
            #puts counter
            if counter == num.length - 1
                arr1 << num
                counter = 0
            end
          end
          x += 1
        end
     end
   end
     arr1.uniq!
     #p arr1
     return arr1
end

#off_by_one_number(["1234", "5678"], ["1233", "5677"])
