# WHILE LOOP

index = 1

while index <= 5
    puts index
    index += 1  
end

# FOR LOOPS

# Output:
# 1
# 2
# 3
# 4
# 5

for index in 0..5   # [start,end]
    puts index  
end

# Output:
# 1
# 2
# 3
# 4
# 5

5.times do |index| # [0,n-1]
    puts index
end

# Output:
# 0
# 1
# 2
# 3
# 4

my_nums = [4,1,5,12,13]
for num in my_nums
    puts num  
end

# Output:
# 4
# 1
# 5
# 12
# 13

my_nums.each do |num|
  puts num
end

# Output:
# 4
# 1
# 5
# 12
# 13