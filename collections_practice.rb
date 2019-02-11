# your code goes here
def begins_with_r(array)
  counter = 0
  array.each do |item|
    if item.chr == "r"
      counter += 1
    end
  end
  if counter == array.length
    return true
  else
    return false
  end
end

def contain_a(array)
  a_items = []
  array.each do |item|
    if item.include?("a")
      a_items << item
    end
  end
  return a_items
end

def first_wa(array)
  array.each do |item|
    if item[0] + item[1] == "wa"
      return item
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |item|
    if item.class == String
      new_array << item
    end
  end
  new_array
end

def count_elements(array)
  unique_array = array.uniq
  unique_array.collect do |item|
    item[:count] = array.count(item)
  end
  unique_array
end


def merge_data(keys, data)
  new_hash = keys
  counter = 0
  data[0].each do |key, data|
    new_hash[counter].merge!(data)
    counter +=1
  end
  new_hash
end

def find_cool(cool)
  cool.each do |hash|
    if hash.has_value?("cool")
      return [hash]
    end
  end
end

def organize_schools(schools)
  new_hash = {}
  locations = schools.collect do |item|
    item[1][:location]
  end
  locations.each do |location|
    new_hash[location] = []
  end
  locations.each do |location|
    schools.each do |school|
      if location == school[1][:location]
        new_hash[location] << school[0]
      end
    end
  end
  finished_hash = {}
  new_hash.each do |key, value|
    finished_hash[key] = value.uniq
  end
  finished_hash
end
