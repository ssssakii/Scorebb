//
//  ViewController2.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/21.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    //Text Field に打ち込んだ文字をLabelに表示させる
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textfield1: UITextField!
    
    @IBAction func enter1(sender: UITextField) {
        label1.text = textfield1.text
    }
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var textfield2: UITextField!
    
    @IBAction func enter2(sender: UITextField) {
        label2.text = textfield2.text
    }
    
    
    
    // saveボタンのアクション
    @IBAction func saveButton1(sender: AnyObject) {
    // データ保存処理
    
    // NSUserDefaultsインスタンスの生成
    let userDefaults = NSUserDefaults.standardUserDefaults()
    
    // キー: "saveText" , 値: "" を格納。（idは任意）
    userDefaults.setObject(textfield1.text, forKey: "saveText")
    }
    
    
    // loadボタンのアクション
    @IBAction func loadButton1(sender: AnyObject) {
    // データ読み込み処理

    // NSUserDefaultsインスタンスの生成
    let userDefaults = NSUserDefaults.standardUserDefaults()

    // キーが"saveText"のStringをとります。
    var loadText1 : String! = userDefaults.stringForKey("saveText")

    // labelに表示
    label1.text = loadText1

    }
    
}