arr = [1,2,3,4,5,6,7,8,9,10]

to_arr = arr.select {|n| puts n if n.odd?}