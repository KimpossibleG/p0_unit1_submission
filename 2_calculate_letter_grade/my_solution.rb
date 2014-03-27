# U1.W3: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# => The input is an array of integers
# What is the output? (i.e. What should the code return?)
# => The code should return a letter grade based on the average of the inputs
# What are the steps needed to solve the problem?

# DEFINE get_grade as a method that takes an array as arguments
# SET sum equal to 0
# FOR EACH element in the array, add the element to the sum
# SET average equal to the sum divided by the length of the array
# CREATE a IF/ELSIF statement that RETURNS
# => "A" if average is greater than or equal to 90
# => "B" if average is greater than or equal to 80
# => "C" if average is greater than or equal to 70
# => "D" if average is greater than or equal to 60
# => "F" if average is less than 60


# 2. Initial Solution

=begin
def get_grade(array)
	sum = 0
	array.each {|x| sum = sum + x}
	average = sum/array.length

	if average >= 90
		return "A"
	elsif average >= 80
		return "B"
	elsif average >= 70
		return "C"
	elsif average >= 60
		return "D"
	elsif average < 60
		return "F"
	end
end
=end


# 3. Refactored Solution

def get_grade(array)
	sum = 0
	array.each {|x| sum += x}
	average = sum/array.length

	grade = case average
		when 90..100 then "A"
		when 80...90 then "B"
		when 70...80 then "C"
		when 60...70 then "D"
		when 0...60  then "F"
	end
end


# 4. Reflection 
=begin
What parts of your strategy worked? What problems did you face?
	At first, I tried to implement a case statemtn using >= instead of 
	num .. otherNum . I didn't realize that wasn't possible.
What questions did you have while coding? What resources did you find to help you answer them?
	I had questions about how to use a case statement. The resource that
	finally helped me through it was http://www.techotopia.com/index.php/The_Ruby_case_Statement
What concepts are you having trouble with, or did you just figure something out? If so, what?
	I'm still struggling to wrap my head around the usefulness of
	pseudocode. I keep finding myself writing the code, remembering that
	I'm supposed to be writing pseudocode, and then going back and adding
	pseudocode. As well, in this case, I originally wrote pseudocode for
	a case statement, and then when that wasn't working, I switched to
	an IF/ELSIF... so I went back up and adjusted my pseudocode to reflect
	that. Should I have bothered? I don't think so.
Did you learn any new skills or tricks?
	This is the first time that I have successfully used a case statement.
How confident are you with each of the learning objectives?
	Feeling very confident with the learning objectives.
Which parts of the challenge did you enjoy?
	I liked writing the beginning part of the code. It feels good to be
	able to produce stuff like this without straining my brain nearly as
	hard as I had to a few weeks ago. :-)
Which parts of the challenge did you find tedious?
	The pseudocoding.
=end
	
rescue Exception => e
	
end
