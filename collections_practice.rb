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

def count_elements(array)

  array.each do |element|
    element[:count] = 0
    element_name = element[:name]
      array.each do |hash|
        if hash[:name] == element_name
          element[:count] += 1
        end
      end
  end.uniq  # sort out the duplicate hash

end


#   David Kennell helped the following code:
# count_result = []
# names = []
#     if !array.include?(element[:name]) # the condition is not doing the job?
# binding.pry
#       # names << element[:name]
#       count_result << {count: 1, name: element[:name]}
#     else
# binding.pry
#       hash_to_change = count_result.select{|hash| hash.name == element[:name]} # this will return blake after iterate to the second blake.
#       hash_to_change[:count] += 1 # how to get it back to count_result.
#   # return count_result

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
 def  merge_data(hash1, hash2)
   merged_data_array = []

   hash1.each do |element1|
         name = element1[:first_name] #the iteration give the first array element.

         hash2.each do |element2|
           merged_hash = element2[name] # name is "blake", this is the blake's Hash data  in hash 2
           merged_hash[:first_name] = name # this add the :first_name => blake
           merged_data_array.push(merged_hash)
         end
   end
   merged_data_array
end


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


 #   organizes the schools by location
def organize_schools(schools)
  organize_schools = {}

  schools.each do |school_name, location_hash|
          location = location_hash[:location] # school name will fell under the same location key.

          if !organize_schools[location].kind_of?(Array)
            organize_schools[location] = []     #need an condition to set the array before using push
            organize_schools[location].push(school_name)
          else
            organize_schools[location].push(school_name) # If the array already exist, just push it.
          end
  end
  organize_schools
end
