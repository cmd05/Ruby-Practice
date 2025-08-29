is_student = false
is_tall = false

# and, or, !
# >, <, >=, <=, !=, ==
# string comparison: mystring == yourstring OR mystring.eql? yourstring

if is_student and is_pass
    puts "You are a student"
elsif is_student and !is_smart
    puts "You are a tall student"
else
    puts "You are neither a student nor tall"
end

# Output:
# You are neither a student nor tall

my_grade = "A"
case my_grade
    when "A"
        puts "You pass"  
    when "F"
        puts "You fail"  
    else
        puts "Invalid grade"
end

# Output:
# You pass