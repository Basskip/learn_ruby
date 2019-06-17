class Book
# write your code here
    def title=str
        str[0] = str[0].upcase
        words = str.split
        excluded = ['the','a','an','and','in','of']
        words.map! do |word|
            if !excluded.include?word 
               word = word.capitalize
            end
            word
        end
        @title = words.join' '
    end

    def title
        @title
    end
end
