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
    }
    
    override init() {
        super.init()
        generateAnswerNumberSting()
    }
    
}
