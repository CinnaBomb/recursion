def fibs(num)
	array = []
	return array if num == 0
	return array = [0] if num == 1
	return array = [0, 1] if num == 2
	array = [0,1]
	(2...num).each{|n| array << array[n-1]+array[n-2] }
	array
end

def fibs_rec (num)
	array = []
	return array if num == 0
	return array = [0] if num == 1
	return array = [0, 1] if num == 2
	#array = [0,1]
	array = fibs_rec(num-1)
	array << array[num-2]+array[num-3]
end

puts fibs(0).inspect
puts fibs(1).inspect
puts fibs(2).inspect
puts fibs(3).inspect
puts fibs(4).inspect
puts fibs(13).inspect
puts fibs_rec(0).inspect
puts fibs_rec(1).inspect
puts fibs_rec(2).inspect
puts fibs_rec(3).inspect
puts fibs_rec(4).inspect
puts fibs_rec(13).inspect