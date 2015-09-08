def echo(word)
    return word
end

def shout(word)
    return word.upcase
end

def repeat(text, number_times = 0)
    word = text
    if number_times > 0
        word += (" " + text)*(number_times-1)
    else
        word = text + " " + text
    end
    return word
end

def start_of_word(word, letters = 0)
    first_letter = ""
    i = 0
    while i < letters
        first_letter += word[i]
        i += 1
    end
    return first_letter
end

def first_word(words)
    separate_words = words.split(/\s+/)
    word_one = separate_words[0]
    return word_one
end

def titleize(words)
    phrase = words.split(/\s+/)
    i = 0
    while i < phrase.length
        phrase[i] = phrase[i].capitalize
        if (phrase[i] == "And" || phrase[i] == "Or" || phrase[i] == "Over" || phrase[i] == "The")
            phrase[i] = phrase[i].downcase
        end
        i += 1
    end
    phrase[0] = phrase[0].capitalize
    return phrase.join(" ")
end
