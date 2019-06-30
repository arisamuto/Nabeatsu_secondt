//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0 {
            return true
        }
        
        // 問題4: 3がつくかどうか調べる
        var checknum: Int = number
        while checknum != 0 {
            if checknum % 10 == 3 {
                return true
            } else {
                checknum = checknum / 10
            }
        }
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        return false
    }
    func isAho2() -> Bool {
        if number % 5 == 0 {
            return true
        }
        var checknum2: Int = number
        while checknum2 != 0 {
            if checknum2 % 10 == 5 {
                return true
            } else {
                checknum2 = checknum2 / 10
            }
        }
        return false
    }
    

@IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else if isAho2() == true {
            faceLabel.text = "( ＾∀＾)"
        }else {
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clearButton() {
        number = 0
        countLabel.text = String(number)
    }

}

