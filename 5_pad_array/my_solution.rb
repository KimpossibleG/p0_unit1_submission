# U1.W3: Pad an Array!

# I worked on this challenge by myself.

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?
# => a non-negative integer and an optional pad value

# What is the output? (i.e. What should the code return?)
# => an array with a minimum length of the non-negative integer
# => If an optional pad value is specified, the array's new elements should be
# => of that optional value. Otherwise, they should be nil.
# => If the minSize is 0, the function should return the original array
# => The output should be a new object, unless the method is followed by !

# What are the steps needed to solve the problem?
# DEFINE a method called pad that takes two arguments:
#        (minSize (mandatory), fillValue (optional))
# IF minSize is equal to zero, return the array
# ELSIF the length of the array is more than or equal to minSize, return the array
# ELSIF fillValue is specified
#    PUSH fillValue onto the end of the array the number of times that is the difference
#    between minSize and the length of the array
#    RETURN the above as a new array
# ELSIF fillValue is not specified
#    PUSH empty values onto the end of the array the number of times that is the
#    difference between minSize and the length of the array
#    RETURN the above as a new array
# IF the method ends with !, return the returned value as the original array

# 2. Initial Solution
class Array
	def pad1(minSize, fillValue=nil)
		if minSize == 0
			return self.dup
		elsif self.length >= minSize.to_i 
			return self.dup
		else gaps = minSize - self.length
			i = 0
			newArray = self.dup
			while i < gaps
				newArray.push(fillValue)
				i += 1
			end
			return newArray
		end
	end
end

class Array
	def pad1!(minSize, fillValue=nil)
		if minSize == 0
			return self
		elsif self.length >= minSize.to_i 
			return self
		else gaps = minSize - self.length
			i = 0
			while i < gaps
				self.push(fillValue)
				i += 1
			end
			return self
		end
	end
end


# 3. Refactored Solution
class Array
	def pad(minSize, fillValue=nil)
		newArray = self.dup
		if minSize == 0 || self.length >= minSize
			return newArray
		else
			i = 0
			while i < (minSize - self.length)
				newArray.push(fillValue)
				i += 1
			end
			return newArray
		end
	end
end
	
class Array
	def pad!(minSize, fillValue=nil)
		if minSize == 0 || self.length >= minSize
			return self
		else gaps = minSize - self.length
			i = 0
			while i < gaps
				self.push(fillValue)
				i += 1
			end
			return self
		end
	end
end

# 4. Reflection
=begin
This exercise was extremely helpful in clarifying my understanding of what a 
Class is. I did struggle with defining the method, as I kept trying to define it with
def self.pad() ... There seems to be a lot of this scattered throughout Ruby
info online, and I'm still confused why it is necessary sometimes but not others.
Feeling pretty good about the concepts, and didn't find any part of this exercise
tedious.


=end


