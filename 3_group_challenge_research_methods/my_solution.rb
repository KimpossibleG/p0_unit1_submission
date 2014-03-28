# U1.W3: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "I", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, 
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
end

def my_hash_finding_method(source, thing_to_find)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  # Your code here!
end

def my_hash_modification_method(source, thing_to_modify)
  # Your code here!
end

# Identify and describe the ruby method you implemented. 
# 
#
#


# Person 3
def my_array_sorting_method(source)
  # Your code here!
end

def my_hash_sorting_method(source)
  # Your code here!
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
# I used the ruby mehtod #delete_if . This method works the
# same way whether it is used for an array or a hash. After
# calling delete if, add curly brackets, and then identify variable
# names for what you are referring to -- the element of your array,
# for example, or the key value pair of your hash. Contain this in 
# these: || . (aside: What are those called?) Follow this with a block
# that, when it evaluates to true, will delete the element you have
# referred to (for an array), or the key value pair in the hash.
# Note that, for the array, I turned each of my elements to strings
# before determining if the item included the particular thing_to_delete,
# because the #include? method wasn't working on a number -- only
# a string. Because I was turning each element to a string, however,
# I also had to be sure to change thing_to_delete to a string.


################## DRIVER CODE ###################################
# HINT: Use `puts` statements to see if you are altering the original structure with these methods. 
# Each of these should return `true` if they are implemented properly.

#p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
#p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]
#p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "I", "only", "have", 3 ]
#p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}
#p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
#p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]] 
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 3, "pets", "but", "I", "only", 2 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 6, "Hoobie" => 3, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0, "Ditto" => 3}

# Reflect!
# I'm not much clearer on how www.ruby-doc.org works, and how
# to read it. This was a good exercise from that perspective.
# 
# What is frustrating is that the test in the driver code is failing,
# despite the fact that when I copied the exact array in the 
# driver code into IRB, it said that it was the same as my 
# source. I did remember to update the driver code to reflect 
# the changes that the modification method would have done to it,
# so I'm really not sure what the deal is.