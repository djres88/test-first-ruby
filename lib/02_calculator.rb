def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def sum(array)
    array_elements = array.length
    value = 0
    i = 0
    while i < array_elements
        value = value + array[i]
        i += 1
    end
    return value
end

def multiply(numbers)
    value = numbers[0]
    i = 1
    while i < numbers.length
        value *= numbers[i]
        i += 1
    end
    return value
end

def power(numbers)
    value = 1
    i = 0
    while i <= numbers.length
        x = 0
        while x < numbers[x+1].to_i
            value = value * numbers[x]
            x +=1
        end
        i +=1
    end
    return value
end
