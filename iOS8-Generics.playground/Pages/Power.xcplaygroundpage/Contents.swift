//: [Previous](@previous)

import Foundation

// Power
// 2^0 = 1
// 2^1 = 2
// 2^2 = 2 * 2 = 4
// 2^3 = 2 * 2 * 2 = 8

//func power(_ value: Int, _ exponent: Int) -> Int {
//    var result: Int = 1
//
//    for _ in 0..<exponent {
//        result *= value
//    }
//    return result
//}

// Stand alone function (hander to find)
func power<Value: Numeric>(_ value: Value, _ exponent: Int) -> Value {
    var result: Value = 1
    
    for _ in 0..<exponent {
        result *= value
    }
    return result
}

power(2, 1)
power(2, 2)
power(2.5, 2)

// Use extensions to add behvior to existing types

//extension Int {
//
//}
//extension Double {
//
//}
//
//extension Int32 {
//
//}

let array = [100, 34, 22, 343]
//array.sort() // in-place sort
let sortedArray = array.sorted() // return an array of sorted elements (not mutating array)


//2.raiseTo(2) // 4

// DRY: Don't Repeat Yourself
// When we copy/paste code, or duplicate code there is a risk for errors
// Sometimes the errors happen when we write the code, but more often
// they happen as we maintain the code and add new features and forget to
// update some of the places with bug fixes / feature code

extension Numeric { // 2 = Int
    mutating func raiseTo(_ exponent: Int) {
        self = self.raisedTo(exponent)  // 2
    }
    
    // Used past tense for returning a result, without modifying a value
    func raisedTo(_ exponent: Int) -> Self {
        var result: Self = 1        // Self = type
        
        for _ in 0..<exponent {
            result *= self          // self = currentValue = 2
        }
        return result
    }
}

var x = 2
x.raiseTo(3)
print(x)

let y = 4
let z = y.raisedTo(2)

let a = 4.35 as Float
let b = Double(565.8)

a.raisedTo(2)
b.raisedTo(2)

// By adding the function to the type using an extension, we make it easier
// to find using code completition

// Swift Naming Convention
// Past tense = return a new copy using algorithm
// Present tense = modify in-place the value using algorithm

//: [Next](@next)
