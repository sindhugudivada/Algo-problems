func getJumpsCountToConverge(_ n: Int) -> Int {
    var count = 0
    var value = n

    while value != 1 {
        if value % 2 == 0 {
            value = value / 2
        } else {
            value = (3 * value) + 1
        }
        count = count + 1
    }
return count
}

func getJumpsCountToConvergeRecursive(_ n: Int) -> Int {

  if n == 1 { return 0 }
  if n%2 == 0 {
    return 1 + getJumpsCountToConvergeRecursive(Int(n/2))
   } else {
     return (1 + getJumpsCountToConvergeRecursive((3*n)+1))
   }
}

func maxNoOfJumps(_ n: Int) -> Int {
  var result = 0
  for i in 1..<n {
      let value = getJumpsCountToConverge(i)
      result = max(value,result)
  }
return result  
}

func getNumWithMaxJumps(_ n: Int) -> Int {
    var jumpsCache: [Int:Int] = [:]
    var maxJumps = 1
    for i in 1..<n {
      let value = getJumpsCountToConvergeRecursive(i)
      jumpsCache[value] = i
      maxJumps = max(value,maxJumps)
    }
  return jumpsCache[maxJumps]!  
}
