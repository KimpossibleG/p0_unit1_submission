# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Catherine Farkas.

# 1. Pseudocode

# What is the input?
# => an array of strings or numbers
# What is the output? (i.e. What should the code return?)
# => an array of the most common strings or numbers in the input array
# What are the steps needed to solve the problem?
# DEFINE a method called mode that takes an array as an argument
# DEFINE a hash called counts with a default value of 0 
# => FOR each unique item in the array, calculate how many times it appears
# ADD item as a key to hash with value += 1
# => RETURN the unique item(s) with maximum number of appearances
# RETURN SELECT key value pairs in counts with value equal to the maximum value of values in counts



# 2. Initial Solution
def mode1(array)
	counts = Hash.new (0)
	array.each{|x| counts[x] += 1}
	maxValues = counts.values
	maxValue = maxValues.max
	return counts.select{|k,v| v == maxValue}.keys
end


# 3. Refactored Solution
def mode(array)
	counts = Hash.new (0)
	array.each{|x| counts[x] += 1}
	return counts.select{|k,v| v == counts.values.max}.keys
end



# 4. Reflection 
=begin
This exercise was very helpful in reinforcing .keys and .values for me. I also learned
.select, which was only from pairing with Catherine, which absolutely demonstrates the
benefits of pairing! 

I find that I get easily messed up when switching back/forth between Ruby and JS. 
While it's also helpful that there are multiple ways to do various things in Ruby,
it can be frustrating to be pairing when those different ways come up, and I am 
more familiar with one way than with the way my pair prefers. 

I worked hard on being a navigator on this challenge; it's the tougher role for me
when I am working on a challenge that is new for me. I am getting strong at
communicating about it, but I do get uncomfortable when I am trying to learn something
and know that someone else is waiting for me. I've also realized that I have a natural
inclination towards test-driven development, sort of -- I like trying a few things and
and testing my code as I go. For this exercise, I ended up navigating by throwing a 
bunch of code at the screen, and then having to go through and fix it error by error
(with Catherine's guidance), and that's tough on the ol' ego. Perhaps that's the real
reason that I prefer learning on my own. :-)
=end

