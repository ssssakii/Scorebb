//
//  ViewController.swift
//  Scorebb
//
//  Created by 高田早記 on 2015/06/16.
//  Copyright (c) 2015年 高田早記. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var myImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //UIImageViewを作成する.
        myImageView = UIImageView(frame: CGRectMake(0,0,100,200))
        
        // 表示する画像を設定する.
        let myImage = UIImage(named: "scoreboard2.png")
        
        //画像をUIImageViewに設定する.
        myImageView.image = myImage
        
        //画像の表示する座標を指定する.
        myImageView.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200.0)
        
        //UIImageViewをViewに追加する.
        self.view.addSubview(myImageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var textfield: UITextField!
    
    @IBAction func enter(sender: UITextField) {
        label1.text = textfield1.text
    }

}

