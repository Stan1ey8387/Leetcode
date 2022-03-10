import Foundation

fileprivate class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCount = 0

        for index in 0..<nums.count {
            let num = nums[index]
            if num != 0 {
                let a = nums[index-zeroCount]
                nums[index-zeroCount] = num
                nums[index] = a
            } else {
                zeroCount += 1
            }
        }
    }
}

var array = [0,1,0,3,12]
Solution().moveZeroes(&array)
print(array)

