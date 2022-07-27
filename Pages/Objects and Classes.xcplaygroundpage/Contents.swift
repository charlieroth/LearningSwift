// Class
class Shape {
    var numberOfSides: Int = 0
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides)"
    }
}

let s = Shape()
print(s.simpleDescription())

s.numberOfSides = 10
print(s.simpleDescription())

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape named \(name) with \(numberOfSides)"
    }
}

let s2 = NamedShape(name: "circle")
print(s2.simpleDescription())

// Subclass
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    var perimeter: Double {
        get {
            return 4.0 * sideLength
        }
        
        set {
            sideLength = newValue / 4.0
        }
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let s3 = Square(sideLength: 2.78, name: "test square")
print(s3.simpleDescription())
print(s3.area())
print(s3.perimeter)


