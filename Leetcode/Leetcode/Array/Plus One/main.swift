import Foundation

fileprivate class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var needPlus: Bool = true
        var digits = digits

        for index in 0..<digits.count  {
            let rightIndex = digits.count - 1 - index
            let rightElement = digits[rightIndex]

            if needPlus {
                if rightElement == 9 {
                    digits[rightIndex] = 0
                } else {
                    needPlus = false
                    digits[rightIndex] = rightElement + 1
                }
            } else {
                break
            }

        }

        if needPlus {
            digits = [1] + digits
        }

        return digits
    }
}

let array = [1,2,2,1]
let solution = Solution().plusOne(array)
print(solution)

