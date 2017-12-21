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
    
    //演算子を格納するDictionaryの変数
    let operatorDic:Dictionary = ["＋":"+", "−":"-", "✕":"*", "÷":"/"]
    
    //結果を格納する変数
    var result:Float? = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch ope {
        case "＋":
            result = 
        case "−":
            "引き算"
        case "＋":
            "足し算"
        case "＋":
            "足し算"
        default:
            <#code#>
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
