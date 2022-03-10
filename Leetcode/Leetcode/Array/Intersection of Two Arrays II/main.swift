import Foundation

fileprivate class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums2 = nums2

        var intersectArray: [Int] = []

        for num1 in nums1 {
            for (index, num2) in nums2.enumerated() where num1 == num2 {
                intersectArray.append(num2)
                nums2.remove(at: index)
                break
            }
        }

        return intersectArray
    }
}

let array1 = [1,2,2,1]
let array2 = [2,2,]
let solution = Solution().intersect(array1, array2)
print(solution)

