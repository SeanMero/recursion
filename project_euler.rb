# find the sum of all numbers less than n that are multiples of 3 or 5
def multiples(n)
  answer = []
  n.times do |i|
    i % 3 == 0 || i % 5 == 0 ? answer.push(i) : next
  end
  answer.sum
end

# produce the nth Fibonacci number recursively.
# n must be a positive integer.
def fibs_rec(n)
  if n == 0 || n == 1
    n
  else
    fibs_rec(n-1) + fibs_rec(n-2)
  end
end

# sum even Fibonacci numbers up to n
def even_fibs(n, sum = 0)

  n.times do |i|
    sum += fibs_rec(i) if fibs_rec(i) % 2 == 0
    break if fibs_rec(i) > n
  end
  sum
end
