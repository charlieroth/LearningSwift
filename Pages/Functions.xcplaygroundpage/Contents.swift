// function definition format:
// func funcName(params) -> ReturnType

// function, labeled parameters
func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)"
}
print(greet(name: "Charlie", day: "Tisdag"))


// function, labeled and non-labeled parameters
//
// Here "on" is a custom label for the parameter "day".
// "day" is the name of the variable in the scope of the function
func greet2(_ name: String, on day: String) -> String {
    return "Hello \(name), today is \(day)"
}
print(greet2("Charlie", on: "Tisdag"))

// multiple return values
func stats(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = 0
    var max = 0
    var sum = 0
    
    for score in scores {
        if score < min {
            min = score
        } else if score > max {
            max = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let result = stats(scores: [9, 2, 6, 3, 0, 21])
print(result)
print("Min: \(result.min)")

// functions are first-class types
func makeIncrementer() -> ((Int) -> Int) {
    func addOne(x: Int) -> Int {
        return x + 1
    }
    return addOne
}
let incrementer = makeIncrementer()
print(incrementer(10))

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    
    return false
}

func lessThanTen(x: Int) -> Bool {
    return x < 10
}
print(hasAnyMatches(list: [23, 43, 12, 8, 543, 123], condition: lessThanTen))


// Closures
var numbers = [1, 2, 3, 4]
var numbersDoubled = numbers.map({ (number: Int) -> Int in
    return number * 2
})
print(numbersDoubled)

var numbersTripled = numbers.map({ number in 3 * number })
print(numbersTripled)

var numbersQuadrupled = numbers.map { $0 * 4 }
print(numbersQuadrupled)
