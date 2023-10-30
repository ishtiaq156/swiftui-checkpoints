import Cocoa

struct Car {
    let model: String
    let numOfSeats: Int
    var currentGear: Int

    mutating func gearUp() {
        if self.currentGear <= 9 {
            self.currentGear += 1
        }
    }

    mutating func gearDown() {
        if self.currentGear >= 2 {
            self.currentGear -= 1
        }
    }
}
