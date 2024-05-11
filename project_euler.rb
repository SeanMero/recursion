# find the sum of all numbers less than n that are multiples of 3 or 5
def multiples(n)
  answer = []
  n.times do |i|
    i % 3 == 0 || i % 5 == 0 ? answer.push(i) : next
  end
  answer.sum
end
