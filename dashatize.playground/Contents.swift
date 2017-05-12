//: Playground - noun: a place where people can play

import UIKit

func dashatize(_ number: Int) -> String {
    let number = number < 0 ? -number : number
    let stringArray =  String(number).characters.map {Int(String($0))! % 2 == 0 ? "\($0)" : "-\($0)-" }
    var stringed = stringArray.joined(separator: "")
    if stringed.characters.first == "-" { stringed.remove(at: stringed.startIndex) }
    if stringed.characters.last == "-" { stringed = String(stringed.characters.dropLast()) }
    return stringed.replacingOccurrences(of: "--", with: "-")
}

dashatize(-1)