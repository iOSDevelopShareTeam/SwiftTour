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
let orange = 5
let appSummary = "I have \(apples) apples. "
let fruitSummary = "I have \(apples + orange) pieces of fruit. "

