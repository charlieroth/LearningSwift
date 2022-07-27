// Protocol
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

// Classes, Structures and Enumerations can all adopt protocols
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 47831

    func adjust() {
        simpleDescription += "Now 100% adjusted"
    }
}
var a = SimpleClass()
print(a.simpleDescription)
a.adjust()
print(a.simpleDescription)

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
print(b.simpleDescription)
b.adjust()
print(b.simpleDescription)

// Extension
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(69.simpleDescription)
var num = 56
num.adjust()
print(num)
