N = gets.chomp.to_i
arr = []
for i in 1..N do
  a, b = gets.chomp.split(' ').map{|n| n.to_i}
  arr.push [a, b]
end
for n in arr do
  a = n[0]
  b = n[1]
  target = a * b - 1
  i = 0
  used = [a]
  hoge = 0
  while true do
    i += 1
    next if i == b
    tmp = target / i
    break if tmp < 1
    if used.include? tmp
      tmp = used.min - 1
      hoge = tmp
      break
    else
      used.push tmp
    end
  end
  puts used.count - 1 + hoge
end
