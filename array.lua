#!/bin/lua

function print_array(array)
  if #array <=0 then
    print "empty array"
  end
  for i=1, #array do
    print(array[i])
  end
end
empty_array = {}
print_array(empty_array)
arr = {10,20,30,40,50}
--equal arr = {[1]=10, [2]=20, [3]=30, [4]=40, [5]=50}

print_array(arr);
mis_arr = {"string", 100, "haoel", function() print("coolshell.cn") end}
-- function will print address
print_array(mis_arr);

--insert element
mis_arr[#mis_arr + 1] = "insert"
print_array(mis_arr);
--delete element
mis_arr[1] = nil
print_array(mis_arr);
--find same element

