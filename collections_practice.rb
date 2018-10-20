require 'pry'
   # Return true if every element of the tools array starts with an "r" and false otherwise. (FAILED - 1)
   # should return false if there's an element that does not begin with r
def begins_with_r(array)
  array.each do |element|
    if element.start_with?("r") == false
      return false
    end
  end
  true
end


 #   return all elements that contain the letter 'a'
def contain_a(array)
  a_array = []
  array.each do |element|
    element.split(//).each do |letter|  # or split("")
      if letter == "a"
        a_array << element
      end
    end
  end
  a_array
end

 #   Return the first element that begins with the letters 'wa'
 def  first_wa(array)
   array.each do |element|
     if element.instance_of?(String) && element.start_with?("wa") == true # element need to be a sting first.
       return element
     end
   end
 end

 #   remove anything that's not a string from an array
def remove_non_strings(array)
  new_array = []
  array.each do |element|     #collect only return all removed elements.
    if element.instance_of?(String) == true
      new_array << element
    end
  end
  new_array
end



#   count how many times something appears in an array
#   David Kennell helped the following code:

def count_elements(array)

  count_result = []
  names = []
  array.each do |element|
    if !array.include?(element[:name]) # the condition is not doing the job?
  binding.pry
      names << element[:name]
      count_result << {count: 1, name: element[:name]}
    else

      hash_to_change = count_result.select{|hash| hash.name == element[:name]} # this will return blake after iterate to the second blake.
      hash_to_change[:count] += 1 # how to get it back to count_result.
    end
  end
  return count_result

end

# my code for count_elements with errors:
# i = 0
# count_result = []

# while i < array.length
#   j = 0
#   element = array[i]

  # array.each do |element|
  #   if first_element == element
  #     j += 1
  #   end
  #     count_result << {name: element, count: j}
  #     array.delete(array[j])

  # end
  #
  # i += 1

 #   combines two nested data structures into one
 # def  merge_data(hash1, hash2)
 #   # what kind of data structures need to merge?
 # end


 #   find all cool hashes
 # Ask to verify if the code is correct?
def find_cool(array)
  cool_array = []
  array.each do |element|
    element.each do |key, value|
      if value == "cool"
        cool_array << element
      end
    end
  end
  cool_array
end

 # #organize_schools
 #   organizes the schools by location
