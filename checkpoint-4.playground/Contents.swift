import Cocoa

enum NumberErrors: Error {
    case outOfBounds, noRoot
}

func square(number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw NumberErrors.outOfBounds
    }
    
    var result: Int = 0
    
    for num in 1...100 {
        if num * num == number {
            result = num
        }
    }
    
    if result == 0 {
        throw NumberErrors.noRoot
    }
    return result
}

do {
    try square(number: 100)
} catch NumberErrors.outOfBounds {
    print("out of bounds")
} catch NumberErrors.noRoot {
    print("no root")
}
