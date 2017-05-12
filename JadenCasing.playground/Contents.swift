//: Playground - noun: a place where people can play

import UIKit

extension String {
    func toJadenCase() -> String {
        let array = self.characters.split(separator: " ").map(String.init)
        var spaceString = array.reduce(""){
            return "\($0) " + String($1).capitalized
        }
        if spaceString.characters.first == " " { spaceString.remove(at: spaceString.startIndex) }
        return spaceString
    }
}

let test = "How can mirrors be real if our eyes aren't real"
print(test.toJadenCase())