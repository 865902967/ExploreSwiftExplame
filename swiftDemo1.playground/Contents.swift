import UIKit

var str = "Hello, playground"

///递归枚举
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression,ArithmeticExpression)
    case multiplication(ArithmeticExpression,ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))


func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
        
    case let.addition(left, right):
        return evaluate(left) + evaluate(right)
    
    case let.multiplication(left, right):
        return evaluate(left)*evaluate(right)
    }
}

print(evaluate(product))
print(evaluate(five))
print(evaluate(four))


if let first = Int("4"), let second = Int("54"), first < second  && second < 100 {
    print("\(first) < \(second) < 100")
}


///while循环中使用可选项绑定
var strs = ["23","34","abc","-4","4"]
var index = 0
var result = 0
while let num = Int(strs[index]), num > 0 {
    result = result+num
    index += 1
}

print(result)
