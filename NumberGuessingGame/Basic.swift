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

}





