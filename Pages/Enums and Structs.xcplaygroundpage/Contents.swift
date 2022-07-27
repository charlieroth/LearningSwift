// Enumerations
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func description() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            // Swift assigns raw values starting at zero
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace
print(ace.description())
print(ace.rawValue)

if let convertedRank = Rank(rawValue: 3) {
    print(convertedRank.description())
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func description() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("06:04:01.06", "06:04:01.26")
let failure = ServerResponse.failure("No more food")

switch success {
case let .result(start, finish):
    print("request started at \(start) and finished at \(finish)")
case let .failure(msg):
    print("request failed, msg: \(msg)")
default:
    print("Unknown server response")
}

// Structs
struct Card {
    var rank: Rank
    var suit: Suit
    
    func description() -> String {
        return "The \(rank.description()) of \(suit.description())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
print(threeOfSpades.description())

