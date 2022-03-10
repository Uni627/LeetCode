//
//  ViewController.swift
//  LeetCode
//
//  Created by E0097 on 03/08/2022.
//  Copyright (c) 2022 E0097. All rights reserved.
//

import UIKit
import LeetCode

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        var nums: [Int] = [1,1,2,23,24]
        
        let result = removeDuplicates(&nums)
    
        NSLog("剩余长度\(result.0),数组\(result.1)")
        
        
        
        var prices = [1,2,3,4,5, 8, 5, 6, 1]
        
        let totalPrice = maxProfit(prices)
        
        NSLog("最大盈利\(totalPrice)")
        
        let rotates = rotate(&prices, 3)
        
        NSLog("旋转后数组\(rotates)")

        let contains = containsDuplicate(&prices)
        
        NSLog("存在重复元素\(contains)")
        
        let singes = [4,1,2,1,2]
        let singe = singleNumber(singes)
        NSLog("只出现一次的数字\(singe)")


        let nums1 = [1,2,2,1], nums2 = [2,2]
        let inters = intersect(nums1, nums2)
        NSLog("两个数组的交集 \(inters)")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

