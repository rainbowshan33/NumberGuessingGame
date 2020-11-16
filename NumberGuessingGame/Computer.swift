//
//  Computer.swift
//  NumberGuessingGame
//
//  Created by 王冊 on 2020/11/16.
//  Copyright © 2020 shanshan. All rights reserved.
//

import Foundation

class Computer: Basic {
    var answerNumberSting = ""
    var guessCount = 0
    
    
    func generateAnswerNumberSting(){
        var numbers = ["1","2","3","4","5","6","7","8","9"]
        for _ in 1 ... MAX_NUMBER{
            let index = Int.random(in: 0 ..< numbers.count )
            let number = numbers[index]
            answerNumberSting += number
            if ALLOW_DUPLICATE_NUMBER == false{
                numbers.remove(at: index)
            }
        }
        print("=== Answer:\(answerNumberSting)")
    }
    
    func userGuess(input:String) -> (A:Int,B:Int)?{
        let result = checkAB(test: input, answer: answerNumberSting)
        if result != nil{
            guessCount += 1
        }
        
        return result
    }
    
    override init() {
        super.init()
        generateAnswerNumberSting()
    }
}

