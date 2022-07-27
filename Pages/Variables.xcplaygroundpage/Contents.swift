import Foundation

// Mutable variable
var mutableVar = 42
mutableVar = 69
print(mutableVar);

// Immutable variable
let immutableVar = 42

// Types are implicit unless you explictly declare
let implictInteger = 42
let explictDouble: Double = 42.69

// Values are never implicitly converted to another type
let label = "The width is: "
let width = 42
let fullLabel = label + String(width)
print(fullLabel);

let nickname: String? = nil
let name: String = "Charles Roth"
let informalGreeting = "Hi \(nickname ?? name)"
