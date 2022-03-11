import Foundation

fileprivate class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary: [Int: Int] = [:]

        for index in 0..<nums.count {
            let num = nums[index]

            if let value = dictionary[target - num] {
                return [value, index]
            }

            dictionary[num] = index
        }

        return []
    }
}

var array = [2,7,11,15]
let solution = Solution().twoSum(array, 9)
print(solution)


