=begin
Implementation of ruby find equilibrium index of the array.
Author: Shrikanth <shrikush01@gmail.com>
Classes:
	Equilibrium - Ffind equilibrium index of the array.
Usage:
arr = [1,2,4,5,0,7,5]
res = Equilibrium.new.calculate(arr,5) returns 4
=end

class Equilibrium
	 def initialize
		@sum = 0
		@leftSum = 0
		@rightSum = 0
	end
	def calculate(arr,n)
	  #Calculate the sum array elements
		@sum = arr.inject(:+)
		# loop through the array elements of leftSum is equal to rightSum return the index else -1
		for i in 0..n-1
			@rightSum = @sum - @leftSum -arr[i]
			return i if(@rightSum == @leftSum)
			@leftSum += arr[i]
		end
		return -1
	end
end
