# create an array of the first n Fibonacci numbers.
# N must be a positive integer.
def fibs(n)
  arr = []
  n.times do |i|
    arr.push(i) if i <= 1
    arr.push(arr[i-1] + arr[i-2]) if i > 1
  end
  arr
end
