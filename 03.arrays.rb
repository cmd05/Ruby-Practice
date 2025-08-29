def arrays_basics()
  # multiple data types are allowed in array
  my_nums = [4, 8, "hello", 16, 23, 42.0]
  # indices:
  #          0  1    2       3   4   5
  #          -6  -5   -4      -3   -2   -1

  my_nums[0] = 90
  puts my_nums[0]
  puts my_nums[1]
  puts my_nums[-1]
  puts my_nums[-6]

  puts
  puts my_nums[2,3] # 2nd index, 3 elements - i=2,3,4
  puts
  puts my_nums[2..4] # 2nd index till 4th index

  puts
  puts "len=" + my_nums.length.to_s
end

# arrays_basics()
# Output:
# 90
# 8
# 42.0
# 90

# hello
# 16
# 23

# hello
# 16
# 23

# len=6

def multidim_arrays()
  my_nums = [ [1,2], [3,4] ]
  my_nums[0][0] = 99

  print my_nums[0]
  puts
  puts my_nums[0][0]
  puts my_nums[1][1]
end

# multidim_arrays()
# Output:
# [99, 2]
# 99
# 4

def array_methods()
    friends = ["Kevin"]
  friends.push("Oscar")
  friends.push("Angela")

  print friends
  puts "\n\n"

  print friends.reverse # does not modify array - returns new array
  puts
  print friends
  puts

  # (object assignment is by reference)
  friends = friends.reverse # assign the new array
  print friends

  puts "\n\n"
  print friends.sort # returns new array
  puts
  print friends
  friends = friends.sort # assign the new array
  puts
  print friends

  puts "\n\n"
  elem = friends.pop # remove last element of the array 
              # (applies on array itself)
              # returns the removed element
  print friends
  puts
  puts elem
  puts friends.include? elem
  puts friends.include? "Angela"
end

array_methods()
# Output:
# ["Kevin", "Oscar", "Angela"]

# ["Angela", "Oscar", "Kevin"]
# ["Kevin", "Oscar", "Angela"]
# ["Angela", "Oscar", "Kevin"]

# ["Angela", "Kevin", "Oscar"]
# ["Angela", "Oscar", "Kevin"]
# ["Angela", "Kevin", "Oscar"]

# ["Angela", "Kevin"]
# Oscar
# false
# true