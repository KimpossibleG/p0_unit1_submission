# U1.W3: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# => an array
# What is the output? (i.e. What should the code return?)
# => the median of the numerical elements of the array
# What are the steps needed to solve the problem?
# DEFINE a method called median that takes an array as its argument
# SORT the array
# FIND the length of the array
# IF the length is odd, return the element in the middle of the array
# IF the length is even, add the two middle elements of the array together
#     and DIVIDE that total by two (as a float)




# 2. Initial Solution

def median1(array)
	array.sort!
	if array.length % 2 == 0
		return ((array[(array.length/2)-1] + array[(array.length/2)])/2.0)
	elsif array.length % 2 == 1
		return array[(array.length/2)]
	end
end



# 3. Refactored Solution
def median(array)
	array.sort!
	return (array[(array.length-1)/2] + array[(array.length/2)])/2.0
end


# 4. Reflection 

=begin
I liked how much more simple it was to do this in Ruby than in JS.
The most interesting element of this for me was the bonus test. My original solution
passed only because the array of strings had an odd length, and therefore didn't 
need to return a "value divided by two". If the array of strings had been of an
even length, the original method would have failed as well.
=end
