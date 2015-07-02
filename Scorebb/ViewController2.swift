//
//  ViewController2.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/21.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class ViewController2:UIViewController, UIPickerViewDelegate, UITextFieldDelegate //,UIPickerViewDelegate
{
    
    //日付入力のDatePicker
    @IBOutlet var myDatePicker: UIDatePicker!
    var time: String!
    
    
    
    //TextFieldとキーボードが隠れないようにするためのやつ
    @IBOutlet weak var addScroll: UIScrollView! //スクロールビュー関連付け
    var txtActiveField: UITextField! //編集後のtextFieldを新しく格納する変数を定義


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //myDatePicker.backgroundColor = UIColor.whiteColor() //DatePickerの背景を白に
        myDatePicker.addTarget(self, action: "onDidChangeDate:", forControlEvents: .ValueChanged)
        // Delegateを設定する.
        time = ""
        
        
        
        //TextFieldとキーボードが隠れないようにするためのやつ
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        textField5.delegate = self
        textField6.delegate = self
        textField7.delegate = self
        textField8.delegate = self
        //デリゲート設定（このdelegateは画面もしくはreturnをタップした時にキーボードを閉じる処理を扱うのに必要なもので、NSNotificationCenterを使うために必要としているものではない。）
        
    }
    
        
        
        /////////////////
        //備考欄について。//
        /////////////////
        
      /*
        // 背景を灰色に設定する.
        //self.view.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        
        // TextView生成する.
        let textField8: UITextField = UITextField(frame: CGRectMake(10, 520, self.view.frame.width - 20, 100))
        
        // TextViewの背景を黃色に設定する.
        //myTextField.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 1, alpha: 1.0)
        
        // 表示させるテキストを設定する.
        textField8.text = ""
        
        // 枠線の色を黒に設定する.
        textField8.layer.borderColor = UIColor.blackColor().CGColor
        
        // フォントの設定をする.
        //myTextField.font = UIFont.systemFontOfSize(CGFloat(20))
        
        // フォントの色の設定をする.
        textField8.textColor = UIColor.blackColor()
        
        // 左詰めの設定をする.
        textField8.textAlignment = NSTextAlignment.Left
        
        // リンク、日付などを自動的に検出してリンクに変換する.
        //myTextField.dataDetectorTypes = UIDataDetectorTypes.All
        
        // 影の濃さを設定する.
        //myTextField.layer.shadowOpacity = 0.5
        
        // テキストを編集不可にする.
        //myTextField.editable = false
        
        // TextViewをViewに追加する.
        self.view.addSubview(textField8)
    
    */
    
    /////////////////////
    //DatePockerについて//
    /////////////////////
    
    func onDidChangeDate(sender: UIDatePicker){
        
        // フォーマットを生成.
        let myDateFormatter: NSDateFormatter = NSDateFormatter()
        myDateFormatter.dateFormat = "yyyy/MM/dd hh:mm"
        
        // 日付をフォーマットに則って取得.
        let mySelectedDate: NSString = myDateFormatter.stringFromDate(sender.date)
        time = mySelectedDate as String
        //myLabel.text = "発車時刻：\(time)"
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
    

    //TextFieldに打ち込んだ文字をLabelに表示させる//
    
    
    
    //@IBOutlet weak var textField1: UITextField!
    
    //textField1に打ち込んだ文字をLabel1に表示させる
    //@IBAction func enter1(sender: UITextField) {
        //label1.text = textfield1.text
    //}


    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
 
    
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
    
    
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    
    
    
    ///////////////////////
    //saveボタンのアクション//
    ///////////////////////
    
    
    @IBAction func saveButton(sender: AnyObject) {
        // データ保存処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        userDefaults.setObject(time, forKey: "label1")
        userDefaults.setObject(textField2.text, forKey: "label2")
        userDefaults.setObject(textField3.text, forKey: "label3")
        userDefaults.setObject(textField4.text, forKey: "label4")
        userDefaults.setObject(textField5.text, forKey: "label5")
        userDefaults.setObject(textField6.text, forKey: "label6")
        userDefaults.setObject(textField7.text, forKey: "label7")
        userDefaults.setObject(textField8.text, forKey: "label8")
        
    }
    
    
    
    // Viewが画面に表示される度に呼ばれるメソッド
    override func viewWillAppear(animated: Bool) {
        // NSNotificationCenterへの登録処理
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: "handleKeyboardWillShowNotification:", name: UIKeyboardWillShowNotification, object: nil)
        notificationCenter.addObserver(self, selector: "handleKeyboardWillHideNotification:", name: UIKeyboardWillHideNotification, object: nil)
    }
    // Viewが非表示になるたびに呼び出されるメソッド
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        
        // NSNotificationCenterの解除処理
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.removeObserver(self, name: UIKeyboardWillShowNotification, object: nil)
        notificationCenter.removeObserver(self, name: UIKeyboardWillShowNotification, object: nil)
    }
    //画面がタップされた際にキーボードを閉じる処理
    func tapGesture(sender: UITapGestureRecognizer) {
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
        textField6.resignFirstResponder()
        textField7.resignFirstResponder()
        textField8.resignFirstResponder()
        
    }
    //キーボードのreturnが押された際にキーボードを閉じる処理
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
        textField6.resignFirstResponder()
        textField7.resignFirstResponder()
        textField8.resignFirstResponder()
        
        //itemMemo.resignFirstResponder()
        return true
    }
    //textFieldを編集する際に行われる処理
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        txtActiveField = textField //　編集しているtextFieldを新しいtextField型の変数に代入する
        return true
    }
    
    //キーボードが表示された時
    func handleKeyboardWillShowNotification(notification: NSNotification) {
        //郵便入れみたいなもの
        let userInfo = notification.userInfo!
        //キーボードの大きさを取得
        let keyboardRect = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue()
        // 画面のサイズを取得
        let myBoundSize: CGSize = UIScreen.mainScreen().bounds.size
        //　ViewControllerを基準にtextFieldの下辺までの距離を取得
        var txtLimit = txtActiveField.frame.origin.y + txtActiveField.frame.height + 8.0
        // ViewControllerの高さからキーボードの高さを引いた差分を取得
        let kbdLimit = myBoundSize.height - keyboardRect.size.height
        
        // こうすることで高さを確認できる（なくてもいい）
        println("テキストフィールドの下辺：(\(txtLimit))")
        println("キーボードの上辺：(\(kbdLimit))")
        
        //スクロールビューの移動距離設定
        if txtLimit >= kbdLimit {
            addScroll.contentOffset.y = txtLimit - kbdLimit
        }
    }
    
    //ずらした分を戻す処理
    func handleKeyboardWillHideNotification(notification: NSNotification) {
        addScroll.contentOffset.y = 0
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
    
