//https://leetcode.com/problems/product-of-array-except-self/

class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var tempArray:[Int] = []
        for i in nums.indices{
            var x:Int = 1
            for j in nums.indices where j != i  {
                x = x * nums[j]
                if j == nums.count - 1 {
                    tempArray.append(x)
                }
                if i == nums.count - 1 && j == nums.count - 2{
                    tempArray.append(x)
                }
            }
        }
        return tempArray
    }
}

var x = Solution()
var nums = [1,2,3,4]
x.productExceptSelf(nums)
