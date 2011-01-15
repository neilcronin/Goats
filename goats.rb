num_of_successes_by_switching_doors = 0
num_of_successes_by_not_switching_doors = 0

num_of_attempts = 100

(0..num_of_attempts).each do |i|
  
  doors = [0,0,1]

  first_choice = rand(3)
  montys_choice = -1
  
#  puts "your first choice is: "+first_choice.to_s
  
  doors.each do |j|
    if j==first_choice then 
      next
    else
      if doors[j]==1 then 
        next
      end
    end
    montys_choice = j
  end
  
#  puts "monty's choice is: "+montys_choice.to_s


  if doors[first_choice]==1 then
    num_of_successes_by_not_switching_doors = num_of_successes_by_not_switching_doors+1
  end

  i = -1;
  doors.each do |door|
    i = i+1
#    puts i.to_s
    if i==first_choice || i==montys_choice then 
      next
    end
    if doors[i]==1 then
      num_of_successes_by_switching_doors = num_of_successes_by_switching_doors+1
    end
  end
#  puts "-----------------------"
end

puts "By not switching doors, you win "+num_of_successes_by_not_switching_doors.to_s+" times out of "+num_of_attempts.to_s+"."
puts "By switching doors, you win "+num_of_successes_by_switching_doors.to_s+" times out of "+num_of_attempts.to_s+"."

