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

fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println
fib(6) println
fib(7) println
fib(8) println

"" println

fib2(1) println
fib2(2) println
fib2(3) println
fib2(4) println
fib2(5) println
fib2(6) println
fib2(7) println
fib2(8) println

"" println

fib3(1) println
fib3(2) println
fib3(3) println
fib3(4) println
fib3(5) println
fib3(6) println
fib3(7) println
fib3(8) println
