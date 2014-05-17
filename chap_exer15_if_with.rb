arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.each do |v|
	#v.delete_if.start_with?('s')
end

arr.delete_if {|i| i.start_with?('s')}

arr2 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr2.delete_if {|i| i.start_with?('s','w')}
p arr
puts '____________'
p arr2