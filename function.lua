#!/bin/lua
--this is comment
function summary()
  sum = 0
  num = 1
  while num <= 100 do
      sum = sum + num
      num = num + 1
  end
  print("sum =",sum)
end
--function call
summary()
--function with argument & return
function pow(x, y)
  return y^x
end
print(pow(2, 4));
--function with multi return
function multi_result(x, y)
  return x + y, x - y
end
print (multi_result(3, 5))
function various_argument(...)
  for i=1, arg.n do
    print(string.format("%d\t%s\n", i, arg));
  end
end
various_argument(1,2,4,5)
-- 递归
function fib(n)
  if n < 2 then
    return 1
  end
  return fib(n - 2) + fib(n - 1)
end
print (fib(10))
--函数指针(闭包)
--
function new_counter()
  local count = 0
  return function()
    count = count + 1
    return count
  end
end

count_fn = new_counter()
print(count_fn())
print(count_fn())
--变长传参
