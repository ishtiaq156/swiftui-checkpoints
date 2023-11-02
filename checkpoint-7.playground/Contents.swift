import Cocoa

class Animal {
    let legs: Int

    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Bark! Bark!")
    }
}

class Cat: Animal {
    let isTame: Bool

    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }

    func speak() {
        print("Meow! Meow!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("CorgBark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("PoodleBark!")
    }
}

class Persian: Cat {
    override func speak() {
        print("PersianMeow!")
    }
}

class Lion: Cat {
    override func speak() {
        print("Roar!")
    }
}
