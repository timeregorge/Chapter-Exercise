h = {a:1, b:2, c:3, d:4}

puts h[:b] #1

h[:e]= 5
puts h  #2

h.each do |k, v|

puts v if v > 3.5 #3

end

#correct answer 

h.delete_if {|k, v| v < 3.5 }

puts h