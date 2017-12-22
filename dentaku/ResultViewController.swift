//
//  ResultViewController.swift
//  dentaku
//
//  Created by s247 on 2017/12/20.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    //データを受け取るための変数
    var letfNum:String  = ""
    var rightNum:String = ""
    var ope:String      = ""
    
    //計算式を表示させるLabel
    @IBOutlet weak var formula: UILabel!
    
    //結果を格納する変数
    var result:Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let lNum = Float(letfNum){
            if let rNum = Float(rightNum){
                switch ope {
                case "＋":
                    result = lNum + rNum
                case "−":
                    result = lNum - rNum
                case "✕":
                    result = lNum * rNum
                case "÷":
                    result = lNum / rNum

                default:
                    result = 0
                }
                
                //計算式を表示させる
                formula.text = letfNum + "　" + ope + "　" + rightNum + "　＝　" + String(result)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
