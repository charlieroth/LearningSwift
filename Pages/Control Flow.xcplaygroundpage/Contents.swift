// for-in
let scores = [12, 23, 34, 45]
var total = 0
for score in scores {
    if score > 20 {
        total += 3
    } else {
        total += 1
    }
}
print("total: \(total)")

// while
var keepGoing = true
var count = 0
while keepGoing {
    print("current count: \(count)")
    if count > 4 {
        keepGoing = false
    }
    count += 1
}

// repeat-while
var keepGoing2 = true
var count2 = 0
repeat {
    print("current count: \(count2)")
    if count2 > 4 {
        keepGoing2 = false
    }
    count2 += 1
} while keepGoing2

// switch
let food = "red pepper"
switch food {
case "celery":
    print("you are eating celery")
case "cucumber", "watercress":
    print("you are basically eating water")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("duh fuq you eatin")
}

// if-let
var optionalName: String? = "Charlie"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "\(greeting) \(name)"
}
print(greeting)

// for-in over dictionary
let persons = [
    "Charlie": 26,
    "Miranda": 25,
    "Parker": 21
]
var oldestName = ""
var oldestAge = 0
for (name, age) in persons {
    if oldestAge < age {
        oldestAge = age
        oldestName = name
    }
}
print("\(oldestName) is the oldest at \(oldestAge) years old")

// range
for x in 0...6 {
    print("x: \(x)")
}

for y in 0..<6 {
    print("y: \(y)")
}
