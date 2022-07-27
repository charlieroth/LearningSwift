enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, to printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

do {
    let response = try send(job: 1040, to: "Bi Sheng")
    print(response)
} catch {
    print(error)
}

// Multiple catch blocks
do {
    let response = try send(job: 123, to: "Never Has Toner")
    print(response)
} catch PrinterError.onFire {
    print("The printer is on fire!!!!")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError)")
} catch {
    print(error)
}

// Errors can also be handled with "try?" to convert the result to an optional
// If the function throws an error, the specific error is discarded and the result is "nil"
// Otherwise the result is an optional containing the value that the function returned
let printerSuccess = try? send(job: 1238, to: "London")
print(printerSuccess)
let printerError = try? send(job: 59847, to: "Never Has Toner")
print(printerError)


// "defer" statement/expression
// Used to write a block of code that's executed after all other code in the function
// The code is executed regardless of whether the function throws an error
// You can use "defer" to write setup and cleanup code next to each other
var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "cheese"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}

fridgeContains("bananas")
print(fridgeIsOpen)
