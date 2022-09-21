


let arr = [1, 4, 2, 10, 2, 3, 1, 0, 20]

print(getMaxSumOfFiveElements(arr))


func sumPairs(_ nums: [Int], matching sum: Int) -> [[Int]] {
    if nums.isEmpty {
        return []
    }
    var leftIndex = 0
    var rightIndex = nums.count - 1
    var pairs = [[Int]]()
    
    while leftIndex < rightIndex {
        let leftIndexValue = nums[leftIndex]
        let rightIndexValue = nums[rightIndex]
        
        if leftIndexValue + rightIndexValue == sum {
            leftIndex += 1
            rightIndex -= 1
            pairs.append([leftIndexValue, rightIndexValue])
        } else if leftIndexValue + rightIndexValue < sum {
            leftIndex += 1
        } else {
            rightIndex -= 1
        }
        
    }

    return pairs
}

print(sumPairs([-3,-2,-1,0,1,2,4], matching: 0))

