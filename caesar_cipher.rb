def caesar_cipher(string, shift)
    
    alpha = ('a'..'z').to_a
    up_alpha = ('A'..'Z').to_a
    
    word = string.split('')

    word.each { |x| 
    upper = false

    if up_alpha.include?(x)
        upper = true
    end   

    x.downcase!

    index =  alpha.find_index(x)

    if index == nil # not in alpha array / not a letter
        print x #returns original char
    else
        index += shift
        if index < 25 
            if upper
                print alpha[index].upcase
            else
                print alpha[index]
            end
        else
            index -= 26
            if upper
                print alpha[index].upcase
            else
                print alpha[index]
            end
        end
    end
    
    
    }
    
    print "\n"

    
end

caesar_cipher("Defend the East wall of the castle!", 1)