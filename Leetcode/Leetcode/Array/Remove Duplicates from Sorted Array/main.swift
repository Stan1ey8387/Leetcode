import Foundation

fileprivate class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var duplicatesCount: Int = 0
        var lastNum: Int = nums[0]

        for index in 1..<nums.count {
            let index = index-duplicatesCount
            let num = nums[index]

            if num == lastNum {
                nums.remove(at: index)
                duplicatesCount += 1
            }

            lastNum = num
        }

        return nums.count
    }
}

var array = [0,0,1,1,1,2,2,3,3,4]
let solution = Solution().removeDuplicates(&array)
print(array)

