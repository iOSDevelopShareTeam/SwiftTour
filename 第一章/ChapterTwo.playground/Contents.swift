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



























