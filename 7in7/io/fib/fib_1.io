# recursive method
fib := method(num,
  if(num < 2,
     num,
     fib(num - 1) + fib(num-2))
)

# array method
fib2 := method(num,
  vals := list(0,1)
  for(i, 2, num, vals append(vals at(vals size - 1) + vals at(vals size -2)))
  vals last
)

type Range
# itteration method
fib3 := method(num,
  curr := 0 clone
  succ := 1 clone
  tmp := 0 clone
  1 to(num) foreach(val, (tmp = curr; curr = succ; succ = tmp + succ))
  curr
)

1 to(8) foreach(val, fib(val) println)

"" println

1 to(8) foreach(val, fib2(val) println)

"" println

1 to(8) foreach(val, fib3(val) println)
