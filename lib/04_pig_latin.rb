def translate(words)
    i = 0
    phrase = words.split(/\s+/)
    while i < phrase.length
        x = 0
        current_word = phrase[i]
        if (phrase[i].match(/qu/))
            if current_word[0] == "q"
                phrase[i] = phrase[i].sub(/^../,'') + "quay"
            else
                phrase[i] = phrase[i].sub(/^.../,'') + current_word[0] + "quay"
            end
        elsif (phrase[i].match(/sch/))
            if current_word[0] == "s"
                phrase[i] = phrase[i].sub(/^.../,'') + "schay"
            else
                phrase[i] = phrase[i].sub(/^..../,'') + current_word[0] + "schay"
            end
        elsif (current_word[x].match(/[aeiou]/))
            phrase[i] = phrase[i] + "ay"
        elsif current_word[x+1].match(/[aeiou]/)
            phrase[i] = phrase[i].sub(/^./,'') + current_word[x] + "ay"
        elsif current_word[x+2].match(/[aeiou]/)
            phrase[i] = phrase[i].sub(/^../,'') + current_word[x] + current_word[x+1] + "ay"
        elsif current_word[x+3].match(/[aeiou]/)
            phrase[i] = phrase[i].sub(/^.../,'') + current_word[x] + current_word[x+1] + current_word[x+2] + "ay"
        end
        i += 1
    end
    return phrase.join(" ")
end
