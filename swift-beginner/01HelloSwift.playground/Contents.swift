import Foundation

// 00. print method
var greeting = "Hello, Swift!"
print(greeting)

// 01. Variable and Constant
var greet1 = "Hello World!" // value can be reassigned
let greet2 = "Bye World!" // value cannot be reassigned

// 02. Primitive Data Types
let firstName: String = "Dowon" // String type
let isMale: Bool = true // Bool type
let isSeniorDev: Bool = false // Bool type
let bday: Date = Date() // Date type
let age: Int = 28 // Integer type
let height: Double = 178.0 // Double type (for math)
let weight: CGFloat = 69.9 // CGFloat type (for UI)

// 03. Conditional Statement
if height > 170 {
    print("my height is", height)
}

if age == 28 {
    print("two years away from reaching thirty!")
}

if isMale {
    print("my gender is male")
} else {
    print("my gender is female")
}

if !isSeniorDev {
    print("work hard, study hard, play hard to become a great senior dev in future!")
}

