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


// Make it generic

func removeDuplicates<Element: Equatable>(array: [Element]) -> [Element] {
    var result: [Element] = []
    
    for item in array {
        if !result.contains(item) {
            result.append(item)
        }
    }
    return result
}

func removeDuplicatesSet<Element: Hashable>(array: [Element]) -> [Element] {
    return Array(Set(array))
}

let array: Array<Int> = [34, 34, 34, 34, 1, 3, 4, 7]
removeDuplicates(array: array)

// [34]
// [34, 1, 3, 4, 7]

let names = ["Bob", "Bob", "Sue", "John"]
removeDuplicates(array: names)

removeDuplicatesSet(array: names)

34.hashValue
34.hashValue
35.hashValue

"Bob".hashValue

struct Car: Hashable {
    var vin = "DFDSF3434"

    // auto synthesized
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(vin)
//    }
}

let car = Car()
car.hashValue
//: [Next](@next)

//: [Next](@next)
