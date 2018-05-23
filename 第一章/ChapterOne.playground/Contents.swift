//: Playground - noun: a place where people can play
// author：shavekevin
import UIKit

var str = "Hello, playground"

// 定义常量和变量
var myVariable = 42
myVariable = 50
let myConstant = 42

// 基本数据类型(由编辑器自己判断/给常量或者变量制定本一个数据类型)
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70
//练习(创建一个类型为float值为4的常量或者变量)
let floatValue:Float = 4
// 如何对数据类型进行强制转换
let label = "The width is"
let width = 94
let widthLabel = label + String(width)
//练习  去掉上面widthLabel中强转常量的类型
//去掉之后 报错。操作符 + 不能够对两个不同类型的数据进行操作也就是说 + 操作符只能操作两个相同类型的数据，。
// 另外一种方式 把其他数据类型转换为字符串：把其他类型的数据写到原括号里面，然后括号左边用\分割开
let apples = 3
let oranges = 5
let appSummary = "I have \(apples) apples. "
let fruitSummary = "I have \(apples + oranges) pieces of fruit. "

// 练习  写一句问候语用上咱们上面提到的用\()把其他类型的数据转换为字符串(例：把一个浮点型的数据转化为一个字符串)
let floatValueTest = 70.0
let stringName = "Kevin"
let stringValue = "My name is " + stringName + "." + "The Tencent rock price is \(floatValueTest)"

//这里的是定义一个常/变量 用  连着开头三个引号作为开始 结束的连着三个引号作为结束  引号之间可以为多个字符串
//  也就是说三个连续双引号作为一个标识符的一部分 加上中间所要表达的内容以三个连续引号为标识符结束
let quotation = """
I said "I have \(apples) apples."And then I said "I have \(apples + oranges) pieces of fruit."

"""
// 用[] 来表示一个数组，数组的取值可以用[index]或者[key]，数组的结尾可以用，隔开


var shoppingList = ["catfish","water","tulips","bluePrint"]
shoppingList[1] = "bottle of water"
var occupations = [
    "malcolm":"Caption",
    "Kaylee":"Mechanic",
]
occupations["Jayne"] = "Public Relations"

// 用初始化的方式创建一个空的数组和空的字典
let emptyArray = [String]()// 数组里的元素是字符串类型的
let emptyDictonary = [String:Float]()// 字典中的key 为字符串 value 为float类型的值
// 如果给出的值类型能够被编译器识别，那么我们可以用下面的方式来写一个空的数组或者字典 就像我们给一个变量进行赋值或者函数调用的时候传值一样(对变量来说说白了就是赋值或者函数的调用，可以直接给值来进行调用)
shoppingList = []
occupations = [:]

// 控制语句
// 主要是讲循环的一些知识点，判断条件之间的()可以省略，但是判断循环体/条件体之间的{}不能省略

let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else {
        teamScore += 1
    }
}
print(teamScore)


// 讲的是用？来表示当前数据的值为可选的。可有可无。
var optionalString: String? = "hello"

print(optionalString == nil)


var optionalName: String? = "john appleseed"

var greeting = "hello"

if let name = optionalName {
    greeting = "hello,\(name)"
}


// 这里是用来练习关于一个值为nil的时候if的判断问题(不要忘记写else)。
var optionalString1: String? = "hello"
print(optionalString1 == nil)
var optionalName1: String? = nil
var greeting1 = "hello"
if let name1 = optionalName1 {
    greeting1 = "hello,\(name1)"
}else {
    greeting1 = "this is an error"
}



















