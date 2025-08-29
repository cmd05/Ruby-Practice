class Book
    # attr_accessor creates both a getter and a setter method for each symbol
    attr_accessor :title, :author

    def initialize(title, author)
        # self.title = title # calls setter
        @title = title # directly initialize member variable
        @author = author   
    end

    # def title=(title)
    #     puts "Setter"
    #     @title = title  
    # end

    # def title
    #     puts "Getter"
    #     return @title  
    # end

    def readBook()
        puts "Reading #{self.title} by #{self.author}"  
    end
end

book1 = Book.new("The C Programming Language", "K&R")
# book1.title = "The C Programming Language" # call setter
# book1.author = "K&R"

book1.readBook()
puts book1.title # call getter

# Output:
# Reading The C Programming Language by K&R
# The C Programming Language