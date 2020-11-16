//
//  ViewController.swift
//  NumberGuessingGame
//
//  Created by 王冊 on 2020/11/16.
//  Copyright © 2020 shanshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var geussTextFiele: UITextField!
    
    @IBOutlet weak var inputA: UITextField!
    
    @IBOutlet weak var inputB: UITextField!
    
    @IBOutlet weak var playerLog: UITextView!
    
    @IBOutlet weak var computerLog: UITextView!
    
    @IBAction func reset(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func guess(_ sender: UIButton) {
    }
    @IBAction func reply(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerLog.text = "----- Player -----\n"
        computerLog.text = "----- Computer -----\n"
    }


}

