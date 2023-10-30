import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let luckyNumbersFormatted = { (luckyNumbersArray: [Int]) in
    luckyNumbersArray
        .filter { !$0.isMultiple(of: 2) }
        .sorted()
        .map { print("\($0) is a lucky number") }
}

luckyNumbersFormatted(luckyNumbers)
