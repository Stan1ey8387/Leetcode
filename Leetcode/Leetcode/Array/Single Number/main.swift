import Foundation

fileprivate class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var number = 0
        for index in 0..<nums.count {
            let num = nums[index]
            number ^= num
        }

        return number
    }
}

let array = [2,2,1]
let solution = Solution().singleNumber(array)
print(solution)

