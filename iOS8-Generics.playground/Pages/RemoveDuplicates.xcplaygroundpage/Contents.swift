//: [Previous](@previous)

import Foundation

// iterate over with index (with some kind of logic)
// add to set = will be unique elements

//func removeDuplicates(array: [Int]) -> [Int] {
//    var result: [Int] = []
//
////    for i in 0..<array.count {
////        let item = array[i]
//    for item in array {
//        if !result.contains(item) {
//            result.append(item)
//        }
//    }
//    return result
//}


func removeDuplicates(array: [Int]) -> [Int] {
    var result: [Int] = []
    
    //    for i in 0..<array.count {
    //        let item = array[i]
    for item in array {
        if !result.contains(item) {
            result.append(item)
        }
    }
    return result
}

let array = [34, 34, 34, 34, 1, 3, 4, 7]
removeDuplicates(array: array)

// [34]
// [34, 1, 3, 4, 7]


//: [Next](@next)
