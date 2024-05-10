require 'pry-byebug'

# create an array of the first n Fibonacci numbers iteratively.
# n must be a positive integer.
def fibs(n)
  arr = []
  n.times do |i|
    arr.push(i) if i <= 1
    arr.push(arr[i-1] + arr[i-2]) if i > 1
  end
  arr
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
