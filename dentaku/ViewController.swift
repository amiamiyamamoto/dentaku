//
//  ViewController.swift
//  dentaku
//
//  Created by s247 on 2017/12/01.
//  Copyright © 2017年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //各テキストフィールドの宣言
    @IBOutlet weak var leftNumField: UITextField!
    @IBOutlet weak var rightNumField: UITextField!
    @IBOutlet weak var ope: UITextField!
    
    //各ボタンを押したときのアクション
    @IBAction func tapPlusButton(_ sender: Any) {
        tapOpeButton("＋")
    }
    @IBAction func tapMinusButton(_ sender: Any) {
        tapOpeButton("−")
    }
    @IBAction func tapMultiplyButton(_ sender: Any) {
        tapOpeButton("✕")
    }
    @IBAction func tapDividedButton(_ sender: Any) {
        tapOpeButton("÷")
    }
    
    //各ボタンを押したときの処理を共通化したもの
    func tapOpeButton(_ text:String) {
        ope.text = text
        rightNumField.becomeFirstResponder()
    }
    
    //次のページに情報を渡す処理
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //次のページを取得する
        let resultViewController = segue.destination as! ResultViewController
        
        //左数字、演算子、右数字をそれぞれ渡す
        if let leftNum = leftNumField.text {
            resultViewController.letfNum = leftNum
        }
        if let rightNum = rightNumField.text {
            resultViewController.rightNum = rightNum
        }
        if let ope = ope.text {
            resultViewController.ope = ope
        }
    }
    
    //前のページから戻ってきたときの処理
    @IBAction func restart(_ segue: UIStoryboardSegue) {
        leftNumField.text  = ""
        rightNumField.text = ""
        ope.text = "＋"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //キーボードタイプを数字入力のみに変更
        self.leftNumField.keyboardType  = UIKeyboardType.numberPad
        self.rightNumField.keyboardType = UIKeyboardType.numberPad
        
        //左側のテキストフィールドにフォーカスを当てる
        self.leftNumField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

