//
//  Position.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/27.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class Position: UIViewController {
    
    @IBOutlet weak var TextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()


    /////////////
        ////
        //////////
        
        let TextView: UITextView = UITextView(frame: CGRectMake(10, 530, self.view.frame.width - 20,500))
        
        TextView.text = "１ピッチャー    投手\n２キャッチャー 捕手\n３ファースト     一塁手\n４セカンド       二塁手 \n５サード          三塁手\n６ショート       遊撃手\n７レフト          左翼手\n８センター      中堅手\n９ライト         右翼手"
        //TextView.backgroundColor = UIColor.grayColor()
        
        // TextViewをViewに追加する.
        self.view.addSubview(TextView)


        // Do any additional setup after loading the view.

    }
    
    /*
    override func viewDidLayoutSubviews() {
        var frame = TextView.frame
        frame.size.height = TextView.contentSize.height
        TextView.frame = frame
    }
    */




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

}
