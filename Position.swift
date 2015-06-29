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
        
        let TextView: UITextView = UITextView(frame: CGRectMake(10, 420, self.view.frame.width - 20, 200))
        
        TextView.text = "１投手  ピッチャー\n２捕手  キャッチャー\n３一塁手 ファースト\n４二塁手 セカンド\n５三塁手 サード\n６遊撃手 ショート\n７左翼手 レフト\n８中堅手 センター\n８右翼手 ライト"
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
