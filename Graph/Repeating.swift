import Foundation

func countNonRepeatingIntegers(_ startingNumber: Int, _ power: Int) -> Int {
  func calculateDigitSum(_ number: Int, _ power: Int) -> Int {
    var sum = 0
    var n = number
    while n > 0 {
      let digit = n % 10
      sum += Int(pow(Double(digit), Double(power)))
      n /= 10
    }
    return sum
  }
  
  var number = startingNumber
  var sequenceSet = Set<Int>()
  var sequenceArray = [Int]()
  
  while !sequenceSet.contains(number) {
    sequenceSet.insert(number)
    sequenceArray.append(number)
    number = calculateDigitSum(number, power)
  }
  
  if let firstIndex = sequenceArray.firstIndex(of: number) {
    return firstIndex
  }
  
  return 0
}
