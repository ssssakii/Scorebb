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


