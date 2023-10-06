//
//  main.swift
//  dictionaryTaskStepik
//
//  Created by Rustam Aliyev on 05.10.2023.
//

import Foundation
//1) Напишите программу которая зашифрует сообщение с помощью словаря. У вас есть словарь с буквами. Зашифруйте сообщение "hello programmer".
var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

func encryption(string: String) -> String {
    let encryptString = string.map { letter in
        return code[String(letter)] ?? " "
    }.joined()
    return encryptString
}

//2. У вас есть массив из чисел. Создайте словарь с этими числами и количеством повторении.

var numbersArray = [1, 3, 5, 5, 2, 5]

func countOfNumbers(arr: [Int]) -> [Int: Int] {
    let dict = Dictionary(grouping: arr ){ $0}.mapValues {$0.count}
    return dict
}

//3. У вас есть словарь в котором есть имя и фамилия студента(key) и gpa(value). Найдите средний gpa из этого словаря.
var student = ["Aliyev": 5, "Petrov": 3, "Ivanov": 8, "Kim": 7, "Smith": 1]
var sumGPA = 0
for i in student.values {
    sumGPA += i
}
var averageGPA = sumGPA / student.count

//4. У вас есть словарь в котором есть имя и фамилия студента(key) и gpa(value). Создайте новый словарь в котором будут студенты gpa которых выше 3.0
var student2 = student.filter { $0.value > 3 }

