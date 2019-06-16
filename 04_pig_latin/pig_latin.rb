#write your code here
def translate(phrase)
    if (phrase.split.length > 1)
        words = phrase.split
        words.map! do |word|
            translate(word)
        end
        return words.join(' ')
    end

    vowels = ['a','e','i','o','u']

    firstvowel = -1

    chars = phrase.split('')
    chars.each_with_index do |c,index|
        if vowels.include?(c)
            if !(c == 'u' && chars[index-1] == 'q')
                firstvowel = index
                break
            end
        end
    end

    if vowels.include?(phrase[0])
        return phrase + 'ay'
    else
        return phrase[firstvowel..-1] + phrase[0..firstvowel-1] + 'ay'
    end

end