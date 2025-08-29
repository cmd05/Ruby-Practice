def print_basic()
  puts "Hello" # appends new line to the end
  print "Hello"
  print "!"
end

# print_basic()
# --- Output: ---
# Hello
# Hello!

def input_output()    
  print "Enter your name: "
  name = gets.chomp
  puts "Hello #{name}, how are you"
end

# input_output()
# --- Output: ---
# Enter your name: John
# Hello John, how are you

def input_add()
  print "Enter your first num: "
  num1 = gets.chomp.to_f
  print "Enter your second num: "
  num2 = gets.chomp.to_f
  puts "Sum = #{num1 + num2}"
end

input_add()
# --- Output: ---
# Enter your first num: 10
# Enter your second num: 20
# Sum = 30.0