//https://leetcode.com/problems/contains-duplicate/submissions/

class Solution {
//    1. Brute force
    func containsDuplicate(_ nums: [Int]) -> Bool {
        for i in nums.indices {
            for j in nums.indices where j != i {
                if nums[i] == nums[j] {
                    return true
                }
            }
        }
        return false
    }
//    2. Approach #2 (Sorting)
    func containsDuplicateSorting(_ nums: [Int]) -> Bool {
        var x = nums
        x.sort()
        for i in x.indices {
            if i < nums.count - 1 {
                if x[i] == x[i+1] {
                    return true
                }
            }
        }
        return false
    }
//    3. Approach #3 (Hash Table)
    func containsDuplicateHash(_ nums: [Int]) -> Bool {
        var hashTable = [Int: Bool]()
        for num in nums {
            if hashTable[num] != nil {
                return true
            } else {
                hashTable[num] = true
            }
        }
        return false
    }
}

var x = Solution()
var nums = [1,2,3,4]
x.containsDuplicateHash(nums)
