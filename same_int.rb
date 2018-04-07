a,b,c = gets.chomp.split(' ').map{|n| n.to_i}

arr = [a,b,c]
arr.sort!
up = arr[2] - arr[1]
dow = arr[2] - arr[0]
count = 0
if (dow + up).odd?
  arr[1] += 1
  arr[2] += 1
  count += 1
end

while arr[1] != arr[2] do
  arr[1]+=1
  arr[0]+=1
  count+=1
end

while arr[0] != arr[2] do
  arr[0] += 2
  count+=1
end

puts count
