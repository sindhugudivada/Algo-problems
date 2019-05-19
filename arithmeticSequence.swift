func arithmatic(_ a:Int,_ n:Int,_ d:Int) -> Int {
    if n == 1 { return a }
    return d + arithmatic(a,n-1,d)
}

print(arithmatic(2,5,3))

func arithmatic1(_ a:Int,_ n:Int,_ d:Int) -> Int {
  if n == 1 { return a }
  var num = n
  var sum = a 
  while (num != 1) {
        sum = sum + d
        num = num - 1
  }
  return sum 
}

print(arithmatic1(2,4,3))
