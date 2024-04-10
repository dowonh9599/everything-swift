# Hello Swift!

## Getting Started with print method

```swift
var greeting = "Hello, Swift!"
print(greeting)
```

## Commenting

```swift
// single line comment

/*
 multi
 line
 comments
 */
```

## Declaring Variable

In Swift, the keywords`var` and `let` are the primary keywords for variable declaration, while `const` is not a keyword in Swift. Instead, Swift uses `let` to declare constants. Here is how they differ:

*   **`var`**: This keyword is used to declare a variable that can be changed after it's been set. In other words, if you use `var` to define a variable, you can assign a new value to that variable later in your code.

    ```swift
    var variableName = "Initial value"
    variableName = "New value" // This is allowed
    ```
*   **`let`**: This keyword is used to declare a constant, which means the value cannot be changed once it's set. If you try to assign a new value to a constant, the Swift compiler will give you an error.

    ```swift
    let constantName = "Initial value"
    // constantName = "New value" // This will cause a compiler error
    ```

In Swift, it's considered best practice to use `let` by default to make your code safer and clearer. Only use `var` when you explicitly need a variable's value to change.

Here's an example to illustrate both:

```swift
let maximumNumberOfLoginAttempts = 3
var currentLoginAttempt = 0

// this is allowed
currentLoginAttempt += 1

// this is not allowed and will result in a compile-time error
// maximumNumberOfLoginAttempts += 1
```

In the example above, `maximumNumberOfLoginAttempts` is a constant because the maximum number of login attempts should not change during the execution of the program. On the other hand, `currentLoginAttempt` is a variable because its value will change each time a user attempts to log in.

## Declaring Types

```swift
let firstName: String = "Dowon" // String type
let isMale: Bool = true // Bool type
let bday: Date = Date() // Date type
let age: Int = 28 // Integer type
let height: Double = 178.0 // Double type (for math)
let weight: CGFloat = 69.9 // CGFloat type (for UI)
```

### Double vs. CGFloat

In Swift, `Double` and `CGFloat` are both used to represent floating-point numbers, but they serve different purposes and have different precisions:

* **Double**: This is a 64-bit floating-point type that conforms to the IEEE 754 standard. It provides at least 15 decimal digits of precision and is the default type when you create aIn Swift, both `Double` and `CGFloat` are used for floating-point numbers, but they have different use cases and precision:
*   **Double**: This is a double-precision, 64-bit floating-point data type. It has a precision of at least 15 decimal digits and is the preferred type for floating-point numbers in Swift, unless you have a specific reason to use `Float` for less precision or `CGFloat` for graphical calculations.

    ```swift
    let myDouble: Double = 0.1234567890123456789
    ```
*   **CGFloat**: This type is used primarily in the context of graphics and user interface code on Apple platforms such as iOS, macOS, watchOS, and tvOS. `CGFloat` is a type alias that Swift defines to match the precision of the underlying processor's native floating-point type. This means that on 32-bit platforms, `CGFloat` is the same as `Float` (32-bit precision), and on 64-bit platforms, it's the same as `Double` (64-bit precision).

    ```swift
    let myCGFloat: CGFloat = 0.1234567890123456789
    ```

The choice between `Double` and `CGFloat` typically depends on the context:

* Use `Double` for general computation and when you're not dealing with UI-specific code.
* Use `CGFloat` when interacting with APIs for graphics, drawing, or UI components that expect sizes, positions, and other geometric values.

Here's an example showing both types in action, with a conversion between them:

```swift
import CoreGraphics

let someDouble: Double = 10.0
let someCGFloat: CGFloat = 20.0

// Conversion from Double to CGFloat
let convertedToCGFloat: CGFloat = CGFloat(someDouble)

// Conversion from CGFloat to Double
let convertedToDouble: Double = Double(someCGFloat)

// Now you can use 'convertedToCGFloat' and 'convertedToDouble' with APIs that expect CGFloat and Double, respectively.
```

It's important to convert between these types when necessary to ensure that your values are compatible with the APIs you are using.
