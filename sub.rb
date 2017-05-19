str=Array.new
def convert(string,arr,character)
	str=Array.new
	string.each_char do |a,key|
		arr.each do |char|
		 	if a==char
		 		str.push(character)
		 	end 	
		end	
		str.push(a)
	end
	for i in 0..arr.length+1
			str.delete("g")
		end
	 return str
end
puts convert("vuong dep trai khoai to khong lo chet doi",["o","u","d","g","n","e"],"/")
