a,b,c = gets.chomp.split(' ').map{|n| n.to_i}

if c >= (a - b).abs
  for i in a..b do
    puts i
  end
else

  result = []
  n = c - 1
  for i in 0..n do
    result.push a + i
    result.push b - i
  end
  result.uniq!
  result.sort!
  for hoge in result do
    puts hoge
  end
end
