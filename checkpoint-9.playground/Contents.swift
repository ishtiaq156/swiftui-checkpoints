import Cocoa

func randomChosenInt(from intArr: [Int]?) -> Int {
    intArr?.randomElement() ?? Int.random(in: 1 ... 100)
}
