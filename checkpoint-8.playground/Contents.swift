import Cocoa

protocol Building {
    var roomsCount: Int { get set }
    var cost: Int { get set }
    var agent: String { get set }
    func summary()
}

extension Building {
    func summary() {
        print("Summary of the Building - ")
        print("Building includes \(roomsCount) rooms and costs $\(cost).")
        print("Contact Agent: \(agent) for more details.")
    }
}

struct House: Building {
    var roomsCount: Int = 50
    var cost: Int = 1_000_000
    var agent: String = "'John Doe'"
}

struct Office: Building {
    var roomsCount: Int = 200
    var cost: Int = 5_000_000
    var agent: String = "'Chrysler'"
}
