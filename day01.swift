//
//  day01.swift
//  LeetCode
//
//  Created by 陆小懒 on 2022/3/8.
//

import Foundation

/*
 问题：删除排序数组中的重复项
 
 问题描述：给你一个 升序排列 的数组 nums ，请你 原地 删除重复出现的元素，使每个元素 只出现一次 ，返回删除后数组的新长度。元素的 相对顺序 应该保持 一致 。
 */

public func removeDuplicates(_ nums: inout [Int]) -> (Int, [Int]) {
    
    
    /* 方法一：
     var expectedNums:[Int] = []
     
     for num in nums {
         if expectedNums.count == 0 {
             expectedNums.append(num)
         } else {
             if num != expectedNums.last {
                 expectedNums.append(num)
             }
         }
     }
     return expectedNums.count
     */
    
    
    if nums.count == 0 {
        return (0, nums)
    }
    
    var fast = 1
    var slow = 1
    
    while fast < nums.count {
        
        if nums[fast] != nums[fast - 1] {
            nums[slow] = nums[fast]
            slow += 1
        }
        fast += 1
    }
           
    let expectedNums = Array(nums[0..<slow])
    return (slow, expectedNums)
}
