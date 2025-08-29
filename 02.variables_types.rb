# Multiline comments
=begin
    Names are case sensitive and may begin with:
        letters, _
    After, may include
        letters, numbers, _
    Convention: general snake case
=end

def basic_vars()
  name = "Mike" # string
  age = 30 # integer
  gpa = 3.5 # decimal
  is_tall = true # boolean - true/false

  name = "John" # reassign variable

  puts "Your name is #{name} and you are #{age} years old." # var inside string
  puts "Your name is " + name + " and you are " + age.to_s + " years old." # concatenation
end

# basic_vars()
# Output:
# Your name is John and you are 30 years old.
# Your name is John and you are 30 years old.

def types_casting()
  puts 3.14.to_i
  puts 3.to_f

  puts 3.0
  puts 3.0.to_s

  puts 100 + "50".to_i
  puts 100 + "50.99".to_f
end

# types_casting()
# Output:
# 3
# 3.0
# 3.0
# 3.0
# 150
# 150.99

def numbers()
  puts 2 * 3 # basic operations: +, -, *, /
  puts 2 ** 3 # exponent
  puts 1 + 2 * 3 # arithmetic order
  puts 10 / 3
  puts 10 / 3.0

  num = 10
  num += 100
  puts num

  num = -36.8
  puts num.abs()
  puts num.round()

  # Math class for useful math methods
  puts Math.sqrt(144)
  puts Math.log(8) # natural log
  puts Math.log(0) # -Infinity
end

# numbers()
# Output:
# 6
# 8
# 7
# 3
# 3.3333333333333335
# 110
# 36.8
# -37
# 12.0
# 2.0794415416798357
# -Infinity

def strings()
  # indices: 0 to n-1
  greeting = "Hello"

  puts greeting
  puts greeting.length
  puts greeting.include? "llo"
  puts greeting.include? "z"

  # Get substring at index 1 with length 3.
  puts greeting[1,3]
end

strings()
# Output:
# Hello
# 5
# true
# false
# ell