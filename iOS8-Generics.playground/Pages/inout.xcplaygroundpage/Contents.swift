import UIKit

//: # Headline
//: ## H2
//: Normal text


//: Goal: increment a number by 1 when I call `increment(number:)` function

var x = 0


//func increment(number: Int) {
//    //number += 1 // Error: Left side of mutating operator isn't mutable: 'number' is a 'let' constant
//
//    var num = number
//    num += 1
//}

func increment(number: inout Int) {
    number += 1
}

increment(number: &x) // x = 1
x
increment(number: &x) // x = 1
x




//: [Next](@next)
