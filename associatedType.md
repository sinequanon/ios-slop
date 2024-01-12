```swift
protocol Calculate {
    associatedType Number
    func addNumber(first: Number, second: Number) -> Number
}

class Calculator: Calculate {
    typealias Number = Int
    func addNumber(first: Number, second: Number) -> Number {
        return a + b
    }
}

class DoubleCalculator: Calculate {
    typealias Number = Double
    func addNumber(first: Number, second: Number) -> Number {
        return a + b
    }
}
```
