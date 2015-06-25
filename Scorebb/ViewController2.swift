//
//  ViewController2.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/21.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class ViewController2:UIViewController //,UIPickerViewDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        
    //備考欄について。
        
        // 背景を灰色に設定する.
        //self.view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        
        // TextView生成する.
        let myTextField: UITextField = UITextField(frame: CGRectMake(10, 520, self.view.frame.width - 20, 100))
        
        // TextViewの背景を黃色に設定する.
        myTextField.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1, alpha: 1.0)
        
        // 表示させるテキストを設定する.
        myTextField.text = ""
        
        // 枠線の色を黒に設定する.
        myTextField.layer.borderColor = UIColor.blackColor().CGColor
        
        // フォントの設定をする.
        myTextField.font = UIFont.systemFontOfSize(CGFloat(20))
        
        // フォントの色の設定をする.
        myTextField.textColor = UIColor.blackColor()
        
        // 左詰めの設定をする.
        myTextField.textAlignment = NSTextAlignment.Left
        
        // リンク、日付などを自動的に検出してリンクに変換する.
        //myTextField.dataDetectorTypes = UIDataDetectorTypes.All
        
        // 影の濃さを設定する.
        //myTextField.layer.shadowOpacity = 0.5
        
        // テキストを編集不可にする.
        //myTextField.editable = false
        
        // TextViewをViewに追加する.
        self.view.addSubview(myTextField)
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
    
    
    //TextFieldに打ち込んだ文字をLabelに表示させる
    
    
    @IBOutlet weak var textField1: UITextField!
    
    //@IBOutlet weak var textfield1: UITextField!
    
    
    //@IBAction func enter1(sender: UITextField) {
        //label1.text = textfield1.text
    //}

    
    
    //@IBOutlet weak var label2: UILabel!
    @IBOutlet weak var textField2: UITextField!
    
    /*
    @IBAction func enter2(sender: UITextField) {
        label2.text = textfield2.text
    }
    */

    
   // @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var textField3: UITextField!
    
    /*
    @IBAction func enter3(sender: UITextField) {
        label3.text = textfield3.text
    }
    */
    
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var textField4: UITextField!
    
    
    @IBAction func enter4(sender: UITextField) {
        label4.text = textField4.text
    }

    
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var textField5: UITextField!
    
    
    @IBAction func enter5(sender: UITextField) {
        label5.text = textField5.text
    }
    
    
    //@IBOutlet weak var label6: UILabel!
    @IBOutlet weak var textField6: UITextField!
    
    /*
    @IBAction func enter6(sender: UITextField) {
        label6.text = textField6.text
    }
    */
    
    
    
    //@IBOutlet weak var label7: UILabel!
    @IBOutlet weak var textField7: UITextField!
    
    /*
    @IBAction func enter7(sender: UITextField) {
        label7.text = textField7.text
    }
    */

    
    
    
    
    //saveボタンのアクション
    @IBAction func saveButton(sender: AnyObject) {
        // データ保存処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        userDefaults.setObject(textField1.text, forKey: "label1")
        userDefaults.setObject(textField2.text, forKey: "label2")
        userDefaults.setObject(textField3.text, forKey: "label3")
        userDefaults.setObject(textField4.text, forKey: "label4")
        userDefaults.setObject(textField5.text, forKey: "label5")
        userDefaults.setObject(textField6.text, forKey: "label6")
        userDefaults.setObject(textField7.text, forKey: "label7")
    //userDefaults.setObject(myTextField.text, forKey: "label8")
        
    }
    
    
    
    
    
    
    /*
    override func viewWillDisappear(animated: Bool) {
        super.viewDidDisappear(animated) //エフェクト関係のパラメタだと思うが、今回は使用しないので、基底クラスを呼び出して、終わり。
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateオブジェクトの呼び出し。as ◯◯はSwiftのキャスト表現
        appDelegate.ViewVal1 = textField1.text // TextFieldの値を取得し、値引き渡し用のプロパティにセット
        appDelegate.ViewVal2 = textField2.text
        appDelegate.ViewVal3 = textField3.text
        appDelegate.ViewVal4 = textField4.text
        appDelegate.ViewVal5 = textField5.text
        appDelegate.ViewVal6 = textField6.text
        appDelegate.ViewVal7 = textField7.text
    }
    */
    
}



    
    
    
    
    /*
    
    //配列を生成
    var names:[String] = ["カネキ", "トーカ", "リゼ", "ニシキ"]
    
    //NSUserDefaultsのインスタンスを生成
    let defaults = NSUserDefaults.standardUserDefaults()
    
    //"NAME"というキーで配列namesを保存
    defaults.setObject(names, forKey:"NAME")
    
    // シンクロを入れないとうまく動作しないときがあります
    defaults.synchronize()
    
    //空の配列を用意
    var names: [String] = []
    
    //前回の保存内容があるかどうかを判定
    if(defaults.objectForKey("NAME")){
    
    //objectsを配列として確定させ、前回の保存内容を格納
    let objects = defaults.objectForKey("NAME") as? NSArray
    
    //各名前を格納するための変数を宣言
    var nameString:AnyObject
    
    //前回の保存内容が格納された配列の中身を一つずつ取り出す
    for nameString in objects!{
    //配列に追加していく
    names.append(nameString as NSString)
    }
    }
    
    
    */
    
