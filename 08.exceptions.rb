# App.rb:238:in 'Integer#/': divided by 0 (ZeroDivisionError)
#         from App.rb:238:in '<main>'
# num = 10/0


begin
     puts bad_variable
     num = 10/0
rescue ZeroDivisionError
     puts "Error"
rescue
     puts "All other errors"
end

# Output:
# All other errors

# 08.exceptions.rb:18:in '<main>': My Exception (RuntimeError)
# raise "My Exception"
