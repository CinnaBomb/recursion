def merge_sort(array)
	n = array.length
	return array if n ==1
	a1 = array[0...n/2]
	a2 = array[n/2...n]
	a1 = merge_sort(a1)  
	a2 = merge_sort(a2)
	merge(a1, a2)

end

def merge(a1, a2)
	array = []
	while !a1.empty? && !a2.empty?
		if a1[0] < a2[0]
			array << a1.shift
		else
			array << a2.shift
		end
	end
	while !a1.empty?
		a1.each {|num| array << a1.shift}
	end
	while !a2.empty?
		a2.each {|num| array << a2.shift}
	end
	array
end


array = [6,7,34,2,56,76,1,0,23,16,89,43,33]
array2 = [7,8,10,6,5,3,98,54,45,67,23]

puts merge_sort(array2).inspect