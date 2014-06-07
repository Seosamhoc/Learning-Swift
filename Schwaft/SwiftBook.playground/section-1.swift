// Playground - noun: a place where people can play

import UIKit
import Darwin

//A Swift Tour Excerpt from: Apple Inc. “The Swift Programming Language.” iBooks. https://itun.es/ie/jEUH0.l


//“Create a constant with an explicit type of Float and a value of 4.”
let myFloat : Float = 4

//“Try removing the conversion to String from the last line. What error do you get?”
//let label = "The width is "
//let width = 94
//let widthLabel = label + width
//Playground execution failed: error: <REPL>:16:24: error: could not find an overload for '+' that accepts the supplied arguments let widthLabel = label + width

//“Use \() to include a floating-point calculation in a string and to include someone’s name in a greeting.”
let firstname = "Kevin"
let age : Float = 4 + 1/3
let yourAge = "\(firstname), your age is \(age)"

//“Change optionalName to nil. What greeting do you get?
//code in braces skipped
//Add an else clause that sets a different greeting if optionalName is nil.”

var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = nil
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
else{
    greeting += " What's your name?"
}

//“Try removing the default case. What error do you get?”
//error: switch must be exhaustive, consider adding a default clause
//let vegetable = "red pepper"
//switch vegetable {
//case "celery":
//    let vegetableComment = "Add some raisins and make ants on a log."
//case "cucumber", "watercress":
//    let vegetableComment = "That would make a good tea sandwich."
//case let x where x.hasSuffix("pepper"):
//    let vegetableComment = "Is it a spicy \(x)?"
//}


//“Add another variable to keep track of which kind of number was the largest, as well as what that largest number was.”
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var type = "number"
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            type = kind
        }
    }
}
largest
type

//“Remove the day parameter. Add a parameter to include today’s lunch special in the greeting.”
func greet(name: String, special: String) -> String {
    return "Hello \(name), today's special is \(special)."
}
greet("Bob", "Chicken")
greet("John", "Beef")

//“Write a function that calculates the average of its arguments.”
func averageOf(numbers: Int...) ->Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    sum = sum/numbers.count
    return sum
}
averageOf(5,7,5,7)

//“Rewrite the closure to return zero for all odd numbers.”
var numbers = [20, 19, 7, 12]

numbers.map({
    (number: Int) -> Int in
    var result = number
    if number%2 !== 0{
        result = 0
    }
    return result
})

//“Add a constant property with let, and add another method that takes an argument.”
class Shape {
    let maxAngle = 180
    var angle = 0
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func cornerDescription() -> String {
        return "The corner has an angle of \(angle) degrees."
    }
}
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

//“Make another subclass of NamedShape called Circle that takes a radius and a name as arguments to its initializer. Implement an area and a describe method on the Circle class.”
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Circle: NamedShape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() ->  Double {
        return M_PI * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with radius \(radius)."
    }
}
let roundy = Circle(radius: 3.0, name: "test circle")
roundy.area()
roundy.simpleDescription()

