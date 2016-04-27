# RandomArray_Swift
随机排序一个数组。(en : Disrupt an array, random)
## Usage
``` Swift
// Array
var array = ["1", "2", "3", "4", "5", "6", "7", "8"]
array = array.randomObjects_ck()
print(array)

// NSMutableArray
var array_ns_mu : NSMutableArray = ["1", "2", "3", "4", "5", "6", "7", "8"].mutableCopy() as! NSMutableArray
array_ns_mu.randomObjects_mutable_ck()
print(array_ns_mu)

// NSArray
var array_ns : NSArray = ["1", "2", "3", "4", "5", "6", "7", "8"]
array_ns = array_ns.randomObjects_ck()
print(array_ns)
```
## Objective-C
[https://github.com/CocodyChou/RandomArray_OC](https://github.com/CocodyChou/RandomArray_OC)