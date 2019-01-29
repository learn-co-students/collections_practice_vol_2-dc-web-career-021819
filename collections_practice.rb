def begins_with_r (array)
  array.each {|item|
    if item.chars.first != "r"
      return FALSE
    end
  }
  TRUE
end

def contain_a (array)
    new_array = []
  array.each {|item|
    if item.chars.include? ("a")
      new_array << item
    end
  }
  new_array
end

def first_wa (array)
  array.find {|item| item.slice(0..1) == "wa" }
end

def remove_non_strings (array)
  array.each {|item|
    if item.is_a? String
    else
        array.delete(item)
    
  }
end

def count_elements (array)
  
end

def merge_data(array)
  
end

def find_cool(array)
  
end

def organize_schools(array)
  
end 