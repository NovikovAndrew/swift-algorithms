
public func getMaxSumOfFiveElements(_ arr: [Int]) -> Int {
    var maResult = Int.min
    var currentSum = 0
    
    // [5, 7, 1, 4, 3, 6, 2, 9, 2]
    for x in 0..<(arr.count - 5) {
        currentSum = 0
        for y in 0..<(x + 5) {
            currentSum += arr[y]
        }
        maResult = max(maResult, currentSum)
    }
    
    return maResult
}
