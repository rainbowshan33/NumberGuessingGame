//
//  Basic.swift
//  NumberGuessingGame
//
//  Created by 王冊 on 2020/11/16.
//  Copyright © 2020 shanshan. All rights reserved.
//

import Foundation

class Basic {
    let MAX_NUMBER = 4
    let ALLOW_DUPLICATE_NUMBER = false

    func isOKNumber(input:String) -> Bool{
        //cheak length
        if input.count != MAX_NUMBER{
            return false
        }
        
        //cheak if it's number
        if Int(input) == nil{
            return false
        }
        
        //cheak duplicate numbers
        if ALLOW_DUPLICATE_NUMBER == false{
            let inputArray = Array(input)
            let inputSet =  Set(inputArray)
            if inputSet.count != inputArray.count{
                return false
            }
        }
        
        return true
        
    }
    func checkAB(test:String,answer:String) ->(A:Int,B:Int)?{
        if isOKNumber(input: test) == false || isOKNumber(input: answer) == false{
            return nil
        }
        var resultA = 0
        var resultB = 0
        let testArray = Array(test)
        let answerArray = Array(answer)
        for i in 0 ..< MAX_NUMBER{
            for j in 0 ..< MAX_NUMBER{
                if testArray[i] == answerArray[j] && i == j{
                    resultA += 1
                }else if testArray[i] == answerArray[j]{
                    resultB += 1
                }
            }
        }
        return(A:resultA, B:resultB)
    }
}
    








