def off_by_one_number(my_number, bash_numbers)
  counter = 0
  x = 0
  my_number.length.times do
    #puts "This is #{my_number}."
    #puts "This is #{bash_numbers}"
    if bash_numbers[x] == my_number[x]
      counter += 1
    #  puts "This is #{counter}."
    end
    x += 1
  end
  counter == my_number.length - 1

end
#p off_by_one_number("1234", "1233")

def winning_tickets_off_by_one(my_number, bash_numbers)
  matches = []
  bash_numbers.each do |winning_bash_num|
    if off_by_one_number(winning_bash_num, my_number)
      matches << winning_bash_num
    end

  end
  return matches
end

p winning_tickets_off_by_one("1234", ["1233", "3333", "4444"])
