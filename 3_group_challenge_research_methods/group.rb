# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  array = []
    source.each { |word| word =~ /#{thing_to_find}/ ? array.push(word) : nil }
    array 
end

def my_hash_finding_method(source, thing_to_find)
  array = []
    source.each { |name, age| age == thing_to_find ? array.push(name) : nil} 
    array
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  new_array = []
  source.each do |num|
    if num.is_a? Integer
      num += thing_to_modify
      new_array.push num
    else
      new_array.push num 
    end
  end
  return new_array
end

def my_hash_modification_method(source, thing_to_modify)
  source.each {|name, age| source[name] = age + thing_to_modify}
end

# Identify and describe the ruby method you implemented. 
# I used the #each method here for the simple reason that I needed to go through 'each' element and key/value and modify the actual data structure for the desired result
# #each is perfect for that.  
# Going into the exercise I did not think I would have an easier time solving the hash than the array.  Finding a way to isolate the integers to some google searching.
# Now that I know how to find out if an element has a specific class (Integer) in an array I see how this can begin to be very useful; at least for fundemental purposes.
# I really like hashes now because the key and the value are seperate and give more room for navigation and code building.

# Person 3
def my_array_sorting_method(source)
  puts source.map{|x| x.to_s}.sort 

  #return source.sort_by{|x| x.to_s} => see comment A below regarding this line
end

def my_hash_sorting_method(source)
    puts source.sort_by{|key,value| value}
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.delete_if{|item| item.to_s.include?(thing_to_delete.to_s)}
end


def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if{|key, value| key == thing_to_delete }
end

# Identify and describe the ruby method you implemented. 
# 
#
#


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "I", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Reflect!
# This task was more of a solo group project where we independtly worked on portions or a larger puzzle
# I was super excited to see that all of the code went through without any errors.
# That said I'm not sure how much I learned from this exercise by way of group work other than a good team can be successful indepently of one another.
# Great Job everyone!
# 