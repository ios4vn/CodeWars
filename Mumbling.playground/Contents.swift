//: Playground - noun: a place where people can play

import UIKit

func accum(_ s: String) -> String {
    let array = Array(s.lowercased().characters)
    let result = array.enumerated().reduce("") {
        let maybeDash = ($1.0 == 0) ? "" : "-"
        var chars = ""
        for index in 0...$1.0{
            if index == 0 {
                chars = chars + String($1.1).uppercased()
            }
            else {
                chars = chars + "\($1.1)"
            }
        }
        return "\($0)\(maybeDash)\(chars)"
    }
    return result
}

accum("abcd")
