import Foundation

// Use "async" to mark function to run asynchronously
func fetchUserId(from server: String) async -> Int {
    if server == "primary" {
        return 97
    }
    
    return 501
}

func fetchUsername(from server: String) async -> String {
    let userId = await fetchUserId(from: server)
    if userId == 501 {
        return "Charlie Roth"
    }
    return "Guest"
}

Task {
    let server = "primary"
    async let fetchingUserId = fetchUserId(from: server)
    async let fetchingUsername = fetchUsername(from: server)
    let (userId, username) = await (fetchingUserId, fetchingUsername)
    let greeting = "Hello \(userId), user ID: \(username)"
    print(greeting)
}
