class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        for i in nums.indices {
            for j in nums.indices {
                if j != i {
                    if nums[i] == nums[j] {
                        return true
                    }
                }
            }
        }
        return false
    }
}

var x = Solution()
var nums = [1,2,3,2]
x.containsDuplicate(nums)
