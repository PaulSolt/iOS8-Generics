//: [Previous](@previous)

import Foundation

// FIFO: First in First out
// Grocery store line
// struct is a value type, we can't modify data unless we use `mutating`
// BUG: After creating a new Page, autocomplete will stop working until you switch files
struct Queue<Element> {
    var elements: [Element]
    
    // pop = remove an element
    // push = add an element
    // peek = look at element
    
    // 3 4 5 6
    mutating func push(_ element: Element) {
        elements.append(element)
    }
    
    mutating func pop() -> Element? {
        if elements.count > 0 {
            return elements.removeFirst()
        } else {
            return nil
        }
    }
    
    func peek() -> Element? {
        return elements.first
    }
}

//var deliQueue = Queue(elements: [54, 55, 56]) // Type Inference
var deliQueue = Queue<Int>(elements: [54, 55, 56])

deliQueue.peek()
deliQueue.pop()
deliQueue.pop()

deliQueue.push(57)
deliQueue.pop()
deliQueue.pop()

deliQueue.peek()
deliQueue.pop()

// URLs

var downloaderQueue = Queue<URL>(elements: [])

downloaderQueue.push(URL(string: "https://apple.com/photos/1")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/2")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/3")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/4")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/5")!)
downloaderQueue.push(URL(string: "https://apple.com/photos/6")!)

downloaderQueue.peek()
//: [Next](@next)
