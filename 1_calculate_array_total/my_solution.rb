# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input? --> Test cases in the array_total_spec.rb file:
#  let(:array_1) { [1, 2, 3, 4, 5, 5, 7] }
#  let(:array_2) { [4, 4, 5, 5, 6, 6, 6, 7] }
#  let(:first_sentence) {["all", "my", "socks", "are", "dirty"]}
#  let(:second_sentence) {["alaska", "has", "over", 586, "thousand", "miles"]}
# What is the output? (i.e. What should the code return?)
# 	27
#   43
#   "All my socks are dirty."
#   "Alaska has over 586 thousand miles."
# What are the steps needed to solve the problem?

# DEFINE total as a method with a single argument
# SET sum equal to 0
# ADD EACH element of the array to sum (assumption: all elements are numbers)
# RETURN sum

# DEFINE sentence_maker as a method with a single argument (an array)
# SET sentence equal to the first element of the array (as a string)
# SET x equal to 1
# WHILE x is less than the length of the array
# 	ADD to sentence a space and the xth element of the array (as a string)
#   SET x equal to x plus 1
# ADD a period to sentence
# CAPITALIZE sentence

# 2. Initial Solution

def total(array)
	sum = 0
	array.each { |x| sum = sum + x}
	sum
end

def sentence_maker(array)
	sentence = array[0].to_s
	x = 1
	while x < array.length
		sentence = sentence + " " + array[x].to_s
		x = x + 1
	end
	sentence = sentence + "."
	sentence.capitalize!
end

# 3. Refactored Solution

# I didn't make any updates to total(array). It looks pretty tight!
def total(array)
	sum = 0
	array.each { |x| sum = sum + x}
	sum
end

# I capitalized the first element of the array when declaring sentence
# to eliminate a line of code at the end.
def sentence_maker(array)
	sentence = array[0].to_s.capitalize!
	x = 1
	while x < array.length
		sentence = sentence + " " + array[x].to_s
		x = x + 1
	end
	sentence = sentence + "."
end


# 4. Reflection 
# My confession: I understood the directions under "Directions" but before
# item 1 on the list of to-dos as a necessary step. It instructed me to 
# create two methods, total and sentence_maker... so I did that, and THEN
# I moved on to step 1. That's where I found the repo, the my_solution.rb
# file, the test code... and THAT'S when I figured out that I was supposed
# to write the methods using TDD. :-S I still went through and started
# from scratch using the TDD, but... UGH.
#
# I'm surprised that the test code didn't have a specific test
# for whether or not the first word of the sentence was capitalized,
# or whether there was a period or space at the end. It just lumped
# it into "This is not a grammatically correct sentence." or similar. 
# I suppose that's all that's necessary, but breaking it down further
# would have make it more clear/simpler.
#
# It was a bit odd to be jumping back into Ruby after spending last week
# on JS. It's coming back pretty quickly, though, which feels good.
# I think that, after spending some time on JS, the concepts in Ruby
# make more sense, even if the syntax needs reviewing on my part.