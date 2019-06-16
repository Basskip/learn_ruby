#write your code here
def echo phrase
    phrase
end

def shout phrase
    phrase.upcase
end

def repeat (phrase, times=2)
    (phrase + ' ')*(times - 1) + phrase
end

def start_of_word (phrase, count)
    phrase[0..count-1]
end

def first_word phrase
    phrase.split[0]
end

def titleize phrase
    arr = phrase.split
    arr[0] = arr[0].capitalize
    ignore = ['and','the','over']
    arr.map! do |item|
        if !ignore.include?(item)
            item = item.capitalize
        end
        item
    end
    arr.join" "
end