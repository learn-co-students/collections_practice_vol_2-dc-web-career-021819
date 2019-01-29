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
  new_array = []
  array.each {|item|
    new_array << item if item.is_a? (String)
  }
  new_array
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(arr1, arr2)
  arr2[0].map do |name, prop_hash|
    new_prop_hash = {}
    arr1.each do |new_attr_hash|
      if new_attr_hash[:first_name] == name
        new_prop_hash = prop_hash.merge(new_attr_hash)
      end
    end
    new_prop_hash
  end
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end