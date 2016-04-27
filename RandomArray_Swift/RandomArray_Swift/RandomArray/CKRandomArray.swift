//
//  CKRandomArray.swift
//  RandomArray_Swift
//
//  Created by 仇弘扬 on 16/4/27.
//  Copyright © 2016年 仇弘扬. All rights reserved.
//

import Foundation

extension NSArray
{
	func randomObjects_ck() -> NSArray {
		return self.sortedArrayUsingComparator({ (obj1, obj2) -> NSComparisonResult in
			let randomResult = Int(arc4random()) % 3 - 1; // arc4random() 返回值为 UInt32，不能为负数，先转为 Int
			return NSComparisonResult(rawValue: randomResult)!
		})
	}
}

extension NSMutableArray
{
	func randomObjects_mutable_ck() {
		let sortedArray = self.sortedArrayUsingComparator({ (obj1, obj2) -> NSComparisonResult in
			let randomResult = Int(arc4random()) % 3 - 1; // arc4random() 返回值为 UInt32，不能为负数，先转为 Int
			let result = NSComparisonResult(rawValue: randomResult)!
			print(result.rawValue)
			return result
		})
		self.removeAllObjects()
		self.addObjectsFromArray(sortedArray)
	}
}

extension Array
{
	func randomObjects_ck() -> Array {
		return self.sort { (obj1, obj2) -> Bool in
			let randomResult = Int(arc4random()) % 2; // arc4random() 返回值为 UInt32，先转为 Int，方便转为 Bool
			return Bool(randomResult)
		}
	}
}
