//: Playground - noun: a place where people can play
//: author:shavekevin  https://github.com/shaveKevin
import UIKit
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempts  = 0
var x = 0.0,y = 0.0,z = 0.0

var welcomeMessage: String
welcomeMessage = "Hello"
var red,green,blue:Double
// 常量和变量的命名
let π = 3.14159
let 你好 = "你好世界"
let 🐶🐂 = "dogcow"
var friendWelcome = "hello !"
friendWelcome = "Bonjour ！"
let languageName = "Swift"
//languageName = "c++"
print(friendWelcome)
// 打印出 friendWelcome 的值
print("The currenct value of firendlyWelcome is \(friendWelcome)")
// 打印出当前firendlyWelcome的值
// This is a comment.
/*This is also a comment.
 but is written over multiple lines. */

/* This is the start of the first multiline comment.
 /* This is the second,nested multiline comment. */
 This is the end of the first mulitiline comment.*/
let cat = "🐱";print(cat)
// print "🐱"
let minValue = UInt8.min // UInt8的最小值为0
let maxValue = UInt8.max // UInt8的最大值为2
print("minValue of UInt8 is \(minValue) and maxValue of UInt8 is \(maxValue)。")
let meaningOfLife = 42
// meaningOfLife will be inferred to be of  type Int  这里常量meaningOfLife 会被便以及推断为一个整型
let  pi = 3.14159
// pi will be inferred to be of type Double 这里常量pi会被默认推断为Double类型的数据。

let anotherPi = 3 + 0.14159
// anotherPi will be inferred of type Double 这里常量anotherPi会被swift推断为Double类型的数据。
let decimalInteger = 17
let binaryInteger  = 0b10001// 二进制的17 2*2*2*2+1
let octalInteger = 0o21 // 八进制的17 2*8+1*1
let hexadecimalInteger = 0x11 // 十六进制的17 16*1+1
//浮点类型的十进制的12.1875
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
/*0x代表16进制C代表12后面.3代表小数 所以整数部分应该是应该是 12*(16^0)+0.3*(16^-1)后面的p代表指数，以2为底。所以完整表达式为
（12*(16^0)+0.3*(16^-1)）*(2^0)
 */
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_000_1

// 注意常量或者变量如果超过范围那么会报错
//let cannotBeNegative:UInt8 = -1 //不在UInt8值范围内报错
//let tooBig:Int8 = Int8.max + 1  //超出Int8值范围内报错

let twoThousand:UInt16 = 2_000
let one:UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// 整数和浮点数类型转换
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi1 = Double(three) + pointOneFourOneFiveNine

//用浮点型来初始化一个整型常量
let integerPi = Int(pi1)
// 类型别名的使用
typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min


// 布尔值
let  ornagesAndOrange = true
let  turnipsAndDelicious = false
if turnipsAndDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
//这里打印的是else的内容，因为值为false

//这个例子不会编译成功，会报错（报错原因是 判断的值不是bool类型）
/*
let i = 1
if i {
    // 这个例子不会编译成功，会报错
}
 */
let i = 1
if i == 1 {
    // 这个例子能编译成功不报错。因为这里i == 1 是一个判断语句
}
//元组
let http404Error = (404,"Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
//输出的状态码为 404
print("The status message is \(statusMessage)")
// 输出的状态描述为 Not Found

let  (justTheStatusCode,_) =  http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
//输出的状态码为 404
print("The status message is \(http404Error.1)")
// 输出的状态描述为 Not Found
let http200Status = (statusCode:200,description:"OK")
print("The status code is \(http200Status.statusCode)")
////输出的状态码为 200
print("The status message is \(http200Status.description)")
// 输出的状态描述为 OK

//
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
//这里的convertedNumber 被编译器推断为'Int'类型，或者类型 ‘optional Int’
var serverResponseCode:Int? = 404
// serverResponseCode中包含了一个可选的Int类型的值404
serverResponseCode = nil
// 这里serverResponseCode的值为nil(值不存在)

var surveyAnswer:String?
//这里surveyAnswer将会被自动设置为nil
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// 输出convertedNumber contains some integer value.
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}
//输出的是 convertedNumber has an integer value of 123.
/*
if let constantName = someOptional {
    statements
}
 */

if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
    print("\'\(possibleNumber)\'  could not be converted to an integer")
}
// 输出 '123' has an integer value of 123

if let firstNumber = Int("4"),let secondNumber = Int("42"),firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}
// 打印的结果是：4 < 42 < 100
if let firstnumber = Int("4") {
    if  let  secondnumber = Int("42") {
        if firstnumber < secondnumber && secondnumber < 100 {
            print("\(firstnumber) < \(secondnumber) < 100")
        }
    }
}
// 打印的结果是：4 < 42 < 100

let  possibleString:String? = "An optional string."
let forcedString:String = possibleString!
//需要用感叹号来获取值

let  assumedString:String! = "An implicitly unwrapped optional string."
let implicitString:String = assumedString
// 不需要用感叹号就能获取值

if assumedString != nil {
    print(assumedString!)
}
// 打印出 An implicitly unwrapped optional string.

if let definiteString = assumedString {
    print(definiteString)
}
// 打印出 An implicitly unwrapped optional string.

func canThrowAnError () throws {
    // this function may or may not throw an error
}

// 异常捕获
do {
    try canThrowAnError()
    // no error was thrown
} catch  {
    // an error was thrown
}

func makeASandwich() throws {
    
}
/*
 do {
 try makeASandwich()
 eatASandwich()
 } catch SandwichError.outOfCleardishes {
 washDishes()
 } catch SandwichError.missingTngredients {
 buyGroceries(ingredients)
 }
 */

// 断言调试
/*
let age = -3
assert(age >= 0,"A person's age can't be less than zero.")
// 这个断言会失败 因为一个人的年龄不可能小于0（把断言中的语句变为age <= 0,就不会走这个断言）
 */
// 省略掉断言的提示语
/*
 assert(age >= 0)
 */
/*
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age > 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}
 */
/*
// 下标中的实现
precondition(index > 0, "Index must be greater than zero.")
 */
let b = 10
var a = 5
a = b
// 现在a的值为10
let (m, n) = (1,2)
//  x的值为1  y的值为2

//if x = y {
//    // 这是不合法的，因为等式 x = y没有返回值。
//}

1 + 2 // 等于3
5 - 3 // 等于2
2 * 3 // 等于6
10.0 / 2.5 // 等于4.0

// "hello," + “world” // 等价于hello,world
9 % 4 // 等价于1
// a = (b * 倍数) + 余数
// 带入等式
9 == (4 * 2) + 1
-9 % 4
/*
let three = 3
let minusThree  = -three// 等价于 -3
let plusThree = -minusThree // 等价于3
 */
let minusSix = -6
let  alsoMinusSix = +minusSix
//alsoMinusSix 的值仍为-6
var aa = 1
aa += 2 // 这里a的值为3
print("aa value is \(aa)")

1 == 1 // true 因为1和1 相等
2 != 1 // true 因为2 不等于1
2 > 1 // true 因为2 大于 1
1 < 2 // true 因为1 小于2
1 >= 1 // true 因为1 等于1 满足1 大于等于1
2 <= 1 // false 因为2 小于等于1
let  name = "world"
if name == "world" {
    print("Hello world")
} else {
    print("I'm sorry \(name),but I don't recognize you")
}
// 打印的结果是 Hello world 因为name 等于“world”

(1,"zebra") < (2,"apple") //返回true 因为1比2小，"zebra"和"apple"是不能被比较的
(3,"apple") < (3,"bird") // 返回true 因为3 等于 3，"apple" 比"bird"少
(4,"dog") < (4,"dog") // 返回true，因为4 等于4 “dog”和“dog”相同。
("blue",-1) < ("purple",1)
//("blue",false) < ("purple",true) //Binary operator '<' cannot be applied to two '(String, Bool)' operands
//let  question = true
//let answer1 = "333"
//let answer2 = "333"
//print("the answer is \(question ? answer1:answer2)")
//if question {
//    answer1
//} else {
//    answer2
//}
//let contentHeight = 40
//let hasHeader = true
//let rowHeight = contentHeight + (hasHeader ? 50:20)// 结果为90
let contentHeight = 40
let hasHeader = true
let rowHeight:Int
if hasHeader {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 20
}
// rowHeight 结果为90
//空合表达式
var aaa:Int?
var bbb = 6
aaa != nil ? aaa!  : bbb
let defaultColorName = "red"
var userDefinedColorName: String?//默认值是nil
userDefinedColorName = "green"
var colorNameToUse = userDefinedColorName ?? defaultColorName
// 因为userDefinedColorName是nil，所以colorNameToUse被设置为默认值"red"
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
//1 times 5 is 5
//2 times 5 is 10
//3 times 5 is 15
//4 times 5 is 20
//5 times 5 is 25

let names = ["Anna","Alex","Brian","Jack"]
let count = names.count
for i in 0 ..< count {
    print("Person \(i + 1) is called \(names[i])")
}
// 打印结果是：
//Person 1 is called Anna
//Person 2 is called Alex
//Person 3 is called Brian
//Person 4 is called Jack
for name in names[2...] {
    print("\(name)")
}
// 打印结果是：
//  Brian
// Jack
for name in names[...2] {
    print("\(name)")
}
// 打印结果是：
//  Anna
//  Alex
// Brian

for name in names[..<2] {
    print("\(name)")
}
// 打印结果是：
//Anna
//Alex
let range = ...5
range.contains(7) //false
range.contains(4) //true
range.contains(-1) //true

let  allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

//打印结果是ACCESS DENIED

let enterDoorCode = true
let passedRetainScan = false
if enterDoorCode && passedRetainScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
//打印结果是ACCESS DENIED
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
//打印结果是Welcome!

if enterDoorCode && passedRetainScan || hasDoorKey || passedRetainScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
//打印结果是Welcome!

if (enterDoorCode && passedRetainScan) || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
//打印结果是Welcome!


