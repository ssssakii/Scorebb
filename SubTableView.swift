//
//  SubTableView.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/24.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class SubTableView: UIViewController {
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    override func viewWillAppear(animated: Bool) {
        super.viewDidDisappear(animated)
        var appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        label1.text =  appDelegate.ViewVal1 // Labelに値引き渡し用のプロパティから取得して設定する。
        label2.text =  appDelegate.ViewVal2
        label3.text =  appDelegate.ViewVal3
        label4.text =  appDelegate.ViewVal4
        label5.text =  appDelegate.ViewVal5
        label6.text =  appDelegate.ViewVal6
        label7.text =  appDelegate.ViewVal7
    }
    */
    
    
    
    //loadボタンのアクション
    @IBAction func loadButton(sender: AnyObject) {
        // データ読み込み処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キーが"saveText"のStringをとります。
        var loadText1 : String! = userDefaults.stringForKey("label1")
        var loadText2 : String! = userDefaults.stringForKey("label2")
        var loadText3 : String! = userDefaults.stringForKey("label3")
        var loadText4 : String! = userDefaults.stringForKey("label4")
        var loadText5 : String! = userDefaults.stringForKey("label5")
        var loadText6 : String! = userDefaults.stringForKey("label6")
        var loadText7 : String! = userDefaults.stringForKey("label7")
        var loadText8 : String! = userDefaults.stringForKey("label8")
        
        
        // labelに表示
        label1.text = loadText1
        label2.text = loadText2
        label3.text = loadText3
        label4.text = loadText4
        label5.text = loadText5
        label6.text = loadText6
        label7.text = loadText7
    //label8.text = loadText8

    }
    
    
    //スクリーンショット機能
    
    struct ScreenCaptureUtil {
        static func take()->UIImage{
            
            //キャプチャ取得.変数screenshotにUIImageが保存されます
            let layer = UIApplication.sharedApplication().keyWindow!.layer
            let scale = UIScreen.mainScreen().scale
            UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, scale);
            
            layer.renderInContext(UIGraphicsGetCurrentContext())
            let screenshot = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext();
            
            return screenshot;
            
        }
    }
        
        
        
}

    
   
    
    
    
    
    //@IBOutlet weak var label1: UILabel!
    // labelに表示
    //label1.text = loadText

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


