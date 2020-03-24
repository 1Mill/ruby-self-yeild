f = -> x { x + 2 }
g = -> x { x * 2 }

puts [1,2,3].map(&f).map(&g)

my_function = -> x { x + 2 } >> -> x { x * 2 }
my_other_function = f >> g >> -> x { puts x }

puts my_function.call(2)
puts my_function.call(3)
puts my_function.call(4)
puts my_function.call(5)

my_other_function.call(100)
