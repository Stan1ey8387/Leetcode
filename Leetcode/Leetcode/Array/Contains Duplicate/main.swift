import Foundation

fileprivate class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dic = [Int:Int]()

        for index in 0..<nums.count {
            let num = nums[index]
            if dic[num] != nil {
                return true
            }
            dic[num, default: 0] += 1
        }

        return  false
    }
}

let array = [1,2,3,1]
let solution = Solution().containsDuplicate(array)
print(solution)

