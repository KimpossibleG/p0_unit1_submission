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
# I used the #each method here for the simple reason that I needed to go 
# through 'each' element and key/value and modify the actual data structure 
# for the desired result
# #each is perfect for that.  
# Going into the exercise I did not think I would have an easier time solving
# the hash than the array.  Finding a way to isolate the integers to some google
# searching. Now that I know how to find out if an element has a specific class
# (Integer) in an array I see how this can begin to be very useful; at least for
# fundemental purposes. I really like hashes now because the key and the value
# are seperate and give more room for navigation and code building.


# Person 3
def my_array_sorting_method(source)
	return source.map{|x| x.to_s}.sort 
	#return source.sort_by{|x| x.to_s} => see comment A below regarding this line
end

def my_hash_sorting_method(source)
  	return source.sort_by{|key,value| value}
end

# Identify and describe the ruby method you implemented. 
# The methods I used are #sort and #sort_by.
# 	#sort: sorts arrays.  It can take a block as an argument, but if no
# => block is included, elements in the array will be sorted according to
# => standard sorting rules for the class of the elements.  For example,
# => strings will be sorted alphabetically and numbers will be sorted
# => numerically.  For this reason, it's important that all the elements in
# => the array are in the same class (which is why we had to map all elements
# => to strings before calling #sort in my_array_sorting_method).
#
#  	#sort_by: sorts arrays and hashes.  Note that in both cases the output is
# => an array since hashes aren't ordered (arrays are indexed; hashes aren't).
# => A block is usually included that specifies the criteria for sorting.
#
# Comment A: Line 38 converts all the elements to strings and then sorts them.
# => This is necessary for the driver code to pass (notice that all elements
# => in the driver code i_want_pets sorted array are strings).  However, I'm 
# => not sure if this was the intent of the assignment, since I have now used 
# => slightly different methods (#sort and #sort_by) in the methods I've 
# => defined. The commented code in line 39 is an alternative that uses the same 
# => method as the hash-sorting method.  However, it works slightly
# => differently than the code on the previous line.  Instead of converting
# => elements in the array to strings, it says "if everything in this array
# => were converted to a string, how would I sort it?" Then it sorts based 
# => on that criterion.  The difference is that the output does not actually
# => contain elements that have been concerted to strings.
#
# => Sorry for all the text guys.  I hope you find this helpful.  Also, 
# => please let me know if I'm being dense and there actually is a way to 
# => pass the driver code using #sort_by.


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
# I used the ruby method #delete_if . This method works the
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
# I'm now much clearer on how www.ruby-doc.org works, and how
# to read it. This was a good exercise from that perspective.
# 
# What is frustrating is that the test in the driver code is failing,
# despite the fact that when I copied the exact array in the 
# driver code into IRB, it said that it was the same as my 
# source. I did remember to update the driver code to reflect 
# the changes that the modification method would have done to it,
# so I'm really not sure what the deal is.