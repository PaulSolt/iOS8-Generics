//: [Previous](@previous)

import Foundation

//: Goal: Swap two numbers with a `swap()` function

var x = 5
var y = 27

// How we can swap values
//var temp = x
//x = y
//y = temp


//func swap(_ lhs: inout Int, _ rhs: inout Int) {
//    let temp = lhs
//    lhs = rhs
//    rhs = temp
//}



// Functions are more reusable for different kinds of data when
// we make them generic
// Value is the type, and it's a placeholder until we use it
func swap<Value>(_ lhs: inout Value, _ rhs: inout Value) {
    let temp: Value = lhs
    lhs = rhs
    rhs = temp
    
    print("Swapped: \(lhs) with \(rhs)")
}


swap(&x, &y)
x
y

// QuickSort / BubbleSort
let numArray = [34, 4, 43]
numArray.sorted()

let stringArray = ["34", "abc"]


//swap("HI", "Name")

var firstRunner = "Dave"
var secondRunner = "Pat"

swap(&firstRunner, &secondRunner)

// Without generics we need to rewrite our algorithms multiple times
// This is very error prone
//func add2(_ number: Int) -> Int {
//    return number + 2
//}
//
//func add2(_ number: Double) -> Double {
//    return number + 3
//}
//
//func add2(_ number: Float) -> Float {
//    return number - 2
//}

// Make it generic

func add2<Value: Numeric>(_ number: Value) -> Value {
//    let two: Value = 2    // you can explicitly create a temporary
//    return number + two   // addition operator has type requirements!
    
    return number + 2   // we can use type inference to make this work
}


add2(10)
add2(3.14)
add2(Float(3.14))
//add2("Hello")
var z = 34
z.negate()
//: [Next](@next)
