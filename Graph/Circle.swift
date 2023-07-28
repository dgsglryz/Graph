import Foundation

func findAndPrintCycles() {
  let t = Int(readLine()!)!
  
  func findCycles(_ permutation: [Int]) -> Int {
    var visited = Array(repeating: false, count: permutation.count)
    var cycles = 0
    
    for i in 0..<permutation.count {
      if !visited[i] {
        var j = i
        while !visited[j] {
          visited[j] = true
          j = permutation[j] - 1
        }
        cycles += 1
      }
    }
    
    return cycles
  }
  
  for _ in 0..<t {
    let n = Int(readLine()!)!
    let permutation = readLine()!.split(separator: " ").compactMap { Int($0) }
    let result = findCycles(permutation)
    print(result)
  }
}
