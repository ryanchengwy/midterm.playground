//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sortArray(array1: [Int], array2: [Int]) -> [Int] {
    var newArray = [Int]()
    newArray = array1 + array2
    
    for var i = 0;  i < newArray.count; i++ {
        for var j = i + 1; j < newArray.count; j++ {
            if newArray[i] == newArray[j] {
                newArray.removeAtIndex(j)
                j -= 1
            }
            else if newArray[i] > newArray[j] {
                    var tmpInt = newArray[i]
                    newArray[i] = newArray[j]
                    newArray[j] = tmpInt
            }
        }
    }
    return newArray
}

sortArray([5, 99, 4, 4], array2: [122, 5, 2, 5, 5, 99])
