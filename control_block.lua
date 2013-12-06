#!/bin/lua
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

function even_sum(n)
  sum = 0
  if n < 1 then
    return sum
  end
  -- the third param default value is 1
  -- for 变量 = 参数1, 参数2, 参数3 do
  -- 循环体
  -- end
  for i = 1, n, 2 do
        sum = sum + i
  end
  return sum
end

print(even_sum(20))

function xy(n)
  sum = 2
  repeat
    --sum += sum ^ 2 --幂操作
    sum = sum ^ 2 --幂操作
  until sum > n
  return sum
end
print(xy(200))
