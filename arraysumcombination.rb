array1=[3,5,-1,8,7,3,2,5,9]
b=array1.max
array=array1-[b] 
k= array.length
flags=0
for i in 1..k
    master_array= array.combination(i).to_a
    a=Array.new
    master_array.each do |i|
	a<< i.inject(:+)
    end
	for i in 0..(a.length-1)
		if a[i] ==b;
		
			puts "the sum of #{master_array[i]} = #{b}"	
		    flags =1
		    break
		end
    end


end
if flags==0
	puts "No such combination"
end
