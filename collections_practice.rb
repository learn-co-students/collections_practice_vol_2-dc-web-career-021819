# your code goes here
def begins_with_r (array)
    b = array.any? do |e|
        e[0] != "r"
    end
    !b
end

def contain_a (array)
    ret = array.select do |e|
        e.include? ("a")
    end
    ret
end

def remove_non_strings (array)
    ret = array.delete_if do |e|
        e.class != "Hello".class
    end
    ret
end

def count_elements(array)
    #[{},{},{}]
    #[{,}{,}]
    ret = []
    array.each do |e|
        n = e[:name]

        new_name = true
        ret.each do |r|
            if r[:name] == n
                new_name = false
                r[:count] += 1
            end

        end
        if new_name

            ret.push ({:name=> n, :count => 1})
        end

    end
    ret
end

def find_cool (array)

 

    array.select do |e|
        e[:temperature] == "cool"
    end
end

def first_wa (array)

    ret = array.find do |e|
        e[0..1] == "wa"
    end
    ret

end

def merge_data (keys, values)
    
    #2 keys, 1 value
    
     k = keys[0][:first_name]
     m0 = keys[0].merge(values[0][k])
     k = keys[1][:first_name]
     m1 = keys[1].merge(values[0][k])
 
     m2 = [m0, m1]
    
     m2

end


def organize_schools (schools)
    #{:Fl => {:loc => NYC}}
    #{:NYC => [FL]}

    ret = {}
    schools.each do |key, value|
        name = key
        loc = value[:location]
        new_location = true
        ret.each do |rKey, rValue|
            if rKey == loc
                new_location = false
                rValue.push (name)
            end
        end
        if (new_location)
            a = []
            a.push(name)
            ret.store(loc, a)
        end
    end
    ret
    
end