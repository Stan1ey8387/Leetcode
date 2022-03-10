import Foundation

fileprivate class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for _ in 0..<k {
            nums.insert(nums.last!, at: 0)
            nums.removeLast()
        }
    }
}

var array = [1,2,3,4,5,6,7]
Solution().rotate(&array, 3)
print(array)

