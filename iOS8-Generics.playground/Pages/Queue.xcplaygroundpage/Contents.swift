//: [Previous](@previous)

import Foundation

// FIFO: First in First out
// Grocery store line
// struct is a value type, we can't modify data unless we use `mutating`
// BUG: After creating a new Page, autocomplete will stop working until you switch files
struct Queue {
    var elements: [Int]
    
    // pop = remove an element
    // push = add an element
    // peek = look at element
    
    // 3 4 5 6
    mutating func push(_ element: Int) {
        elements.append(element)
    }
    
    mutating func pop() -> Int? {
        if elements.count > 0 {
            return elements.removeFirst()
        } else {
            return nil
        }
    }
    
    func peek() -> Int? {
        return elements.first
    }
}

var deliQueue = Queue(elements: [54, 55, 56])

deliQueue.peek()
deliQueue.pop()
deliQueue.pop()

deliQueue.push(57)
deliQueue.pop()
deliQueue.pop()

deliQueue.peek()
deliQueue.pop()


//: [Next](@next)
