# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# 1. First Person's solution I liked
# Catherine & Tyler
#    What I learned from this solution
# In my methods, I made a point of calling out the
# case where the minimum length of the specified
# array was 0. Because the length of an existing array
# will always be greater or equal to 0, though, it's
# unnecessary to call this specific example. The case
# where the min length is zero will be caught by the 
# rest of the code. I thought it was also interesting
# that they decided to rely on the index of the array
# to add values, rather than use a push method.
# Copy solution here:

class Array
#Below is the non-destructive pad method
	def padCT (number, object = nil)
		new_array = self.map{|a| a}
		if new_array.length >= number
			return new_array
		else
			for i in new_array.length...number
				new_array [i] = object
			end
			return new_array
		end
	end
# Below is the destructive pad! method
	def padCT! (number, object = nil)
		if self.length >= number
			return self
		else
			for i in self.length...number
				self [i] = object
			end
			return self
		end
	end
end



# 2. Second Person's solution I liked
# Keenan and Ahmed
#    What I learned from this solution
# Code was very simple and clear. I liked using
# .times method; keeps things so clear!
# Copy solution here:
class Array
  def padKA!(min_size, value = nil)
    pad_size = min_size - self.length #Can we use .count or .size instead? why/why not?
    pad_size.times do
     self << value
    end 
    self
  end
  
  def padKA(min_size, value = nil)
    
    self.dup.padKA!(min_size, value) # we ran this with clone, and that works, as well
  end
  
end



# 3. My original (re-factored) solution:
class Array
	def pad1(minSize, fillValue=nil)
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
	def pad1!(minSize, fillValue=nil)
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


# 4. My refactored solution:
class Array
	def pad(minSize, fillValue=nil)
		newArray = self.dup
		gaps = minSize - self.length
		gaps.times do
			newArray.push(fillValue)
		end
		return newArray
	end
end
	
class Array
	def pad!(minSize, fillValue=nil)
		gaps = minSize - self.length
		gaps.times do
			self.push(fillValue)
		end
		return self
	end
end


# 5. Reflection